from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL
from config import Config
from datetime import datetime
import re

app = Flask(__name__)
app.config.from_object(Config)

# flash message
app.secret_key = "secret123"

mysql = MySQL(app)

# ==================================
# HOME / DASHBOARD
# ==================================
@app.route("/")
def index():
    cur = mysql.connection.cursor()

    # ambil wisata unggulan
    cur.execute("SELECT * FROM wisata LIMIT 3")
    wisata = cur.fetchall()

    # total booking
    cur.execute("SELECT COUNT(*) FROM booking")
    total_booking = cur.fetchone()[0]

    # total pengunjung
    cur.execute("SELECT SUM(jumlah_orang) FROM booking")
    total_pengunjung = cur.fetchone()[0]

    if total_pengunjung is None:
        total_pengunjung = 0

    # wisata paling sering dikunjungi
    cur.execute("""
        SELECT 
            wisata.nama,
            SUM(booking.jumlah_orang) as total_pengunjung
        FROM booking
        INNER JOIN wisata 
            ON booking.wisata_id = wisata.id
        GROUP BY wisata.nama
        ORDER BY total_pengunjung DESC
    """)

    riwayat_wisata = cur.fetchall()

    print(riwayat_wisata)   # cek di terminal

    cur.close()

    return render_template(
        "index.html",
        wisata=wisata,
        total_booking=total_booking,
        total_pengunjung=total_pengunjung,
        riwayat_wisata=riwayat_wisata
    )

# ==================================
# WISATA PER LOKASI
# ==================================
@app.route("/wisata/<lokasi>")
def wisata_lokasi(lokasi):
    cur = mysql.connection.cursor()

    cur.execute(
        "SELECT * FROM wisata WHERE lokasi=%s",
        (lokasi,)
    )

    data = cur.fetchall()
    cur.close()

    return render_template(
        "wisata.html",
        wisata=data,
        lokasi=lokasi
    )


# ==================================
# SEMUA WISATA
# ==================================
@app.route("/wisata")
def wisata():
    cur = mysql.connection.cursor()

    cur.execute("SELECT * FROM wisata")
    data = cur.fetchall()

    cur.close()

    return render_template(
        "wisata.html",
        wisata=data
    )


# ==================================
# DETAIL WISATA
# ==================================
@app.route("/detail/<int:id>")
def detail(id):
    cur = mysql.connection.cursor()

    cur.execute(
        "SELECT * FROM wisata WHERE id=%s",
        (id,)
    )

    data = cur.fetchone()
    cur.close()

    return render_template(
        "detail.html",
        w=data
    )


# ==================================
# BOOKING
# ==================================
@app.route("/booking/<int:id>", methods=["GET", "POST"])
def booking(id):
    cur = mysql.connection.cursor()

    # ambil data wisata
    cur.execute(
        "SELECT * FROM wisata WHERE id=%s",
        (id,)
    )

    wisata = cur.fetchone()

    if request.method == "POST":

        nama = request.form.get("nama")
        email = request.form.get("email")
        no_hp = request.form.get("no_hp")
        tipe = request.form.get("tipe")
        jumlah = request.form.get("jumlah")
        mulai = request.form.get("mulai")
        selesai = request.form.get("selesai")

        # ================= VALIDASI =================

        if not all([nama, email, no_hp, tipe, jumlah, mulai, selesai]):
            flash("Semua field wajib diisi!", "danger")
            return redirect(request.url)

        # validasi email
        if not re.match(r"[^@]+@[^@]+\.[^@]+", email):
            flash("Format email tidak valid!", "danger")
            return redirect(request.url)

        # validasi nomor HP
        if not no_hp.isdigit():
            flash("No HP harus angka!", "danger")
            return redirect(request.url)

        # validasi jumlah orang
        try:
            jumlah = int(jumlah)

            if jumlah < 1:
                flash("Jumlah minimal 1 orang!", "danger")
                return redirect(request.url)

        except:
            flash("Jumlah orang tidak valid!", "danger")
            return redirect(request.url)

        # validasi tanggal
        try:
            mulai_date = datetime.strptime(mulai, "%Y-%m-%d")
            selesai_date = datetime.strptime(selesai, "%Y-%m-%d")

            if selesai_date < mulai_date:
                flash("Tanggal selesai tidak boleh sebelum tanggal mulai!", "danger")
                return redirect(request.url)

        except:
            flash("Format tanggal tidak valid!", "danger")
            return redirect(request.url)

        # ================= INSERT BOOKING =================
        cur.execute("""
            INSERT INTO booking
            (
                wisata_id,
                nama,
                email,
                no_hp,
                tipe,
                jumlah_orang,
                tanggal_mulai,
                tanggal_selesai
            )
            VALUES (%s,%s,%s,%s,%s,%s,%s,%s)
        """, (
            id,
            nama,
            email,
            no_hp,
            tipe,
            jumlah,
            mulai,
            selesai
        ))

        mysql.connection.commit()
        cur.close()

        flash("Booking berhasil dilakukan!", "success")

        return redirect(url_for("wisata"))

    cur.close()

    return render_template(
        "booking.html",
        w=wisata
    )


# ==================================
# GALERI
# ==================================
@app.route("/galeri")
def galeri():
    cur = mysql.connection.cursor()

    cur.execute("SELECT * FROM wisata")
    data = cur.fetchall()

    cur.close()

    return render_template(
        "galeri.html",
        wisata=data
    )


# ==================================
# KONTAK
# ==================================
@app.route("/kontak")
def kontak():
    return render_template("kontak.html")


# ==================================
# RUN APP
# ==================================
if __name__ == "__main__":
    app.run(debug=True)