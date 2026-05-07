-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2026 pada 15.25
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `wisata_id` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tipe` varchar(20) DEFAULT NULL,
  `jumlah_orang` int(11) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id`, `wisata_id`, `nama`, `tipe`, `jumlah_orang`, `tanggal_mulai`, `tanggal_selesai`, `no_hp`, `email`) VALUES
(4, 2, 'Bony', 'Individu', 1, '2026-04-20', '2026-04-24', '89732425644', 'bony@gmail.com'),
(5, 4, 'Dimas', 'Individu', 1, '2026-04-22', '2026-04-29', '08973242', 'dimas@gmail.com'),
(6, 10, 'yoksan26', 'Individu', 1, '2026-04-22', '2026-04-25', '8973242', 'kameliatobin@gmail.com'),
(7, 20, 'Yoksan Why', 'Kelompok', 9, '2026-04-22', '2026-04-29', '0897664343', 'yoksanwai26@gmail.com'),
(8, 20, 'lyla15', 'Kelompok', 2, '2026-04-22', '2026-04-24', '9897777', 'lyla@gmail.com'),
(9, 35, 'Glen', 'Kelompok', 2, '2026-04-22', '2026-05-02', '8973242', 'Glen@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id`, `nama`, `lokasi`, `deskripsi`, `gambar`) VALUES
(1, 'Labuan Bajo', 'Manggarai Barat', 'Gerbang menuju Pulau Komodo', 'labuan_bajo.jpg'),
(2, 'Danau Kelimutu', 'Ende', 'Danau tiga warna yang unik', 'kelimutu.jpg'),
(3, 'Pulau Komodo', 'Manggarai Barat', 'Pulau Komodo menjadi daya tarik utama wisata Manggarai Barat. Sebagai rumah asli bagi komodo, reptil purba yang hanya ditemukan di Indonesia, pulau ini menawarkan pengalaman tak terlupakan. Selain melihat komodo di habitat alaminya, Anda juga dapat menikmati snorkeling atau menyelam untuk mengeksplorasi keindahan bawah lautnya yang penuh dengan kehidupan laut. Trekking ke bukit-bukit kecil di pulau ini akan membawa Anda ke panorama yang luar biasa.', 'komodo.jpg'),
(4, 'Pulau Padar', 'Manggarai Barat', 'Wisata Pulau Padar menjadi salah satu objek wisata alam menawan yang ad di Manggarai. Pulau ini merupakan salah satu pulau besar yang ada di kawasan Taman Nasional Komodo.\r\nObjek wisata Pulau Padar menjadi tempat berlibur yang paling strategis karena memiliki view yang begitu menawan. Selain itu suasana di pulau ini begitu romantic. Pulau tanpa penghuni ini tidak sama dengan Pulau Rinca atau Pulau Komodo yang dihuni oleh kawanan komodo.\r\nSpot alam yang begitu menawan di pulau Padar menarik banyak pecinta fotografi untuk menuntaskan hobi mereka di tempat ini. bagi penggila foto selfie juga cocok sekali datang ke Pulau Padar.', 'PulauPadar.jpg'),
(5, 'Kampung Adat Waerebo', 'Manggarai Barat', 'Kampung Adat Waerebo, terletak di Kabupaten Manggarai, Nusa Tenggara Timur, adalah sebuah desa adat yang terkenal dengan keunikan arsitektur rumah adatnya yang berbentuk kerucut meruncing ke atas, disebut Mbaru Niang. Desa ini dikenal sebagai warisan budaya dunia oleh UNESCO pada Agustus 2012 dan telah melestarikan tradisi dan budaya setempat. Masyarakat Waerebo, yang berasal dari Minangkabau, telah melestarikan kampung adat dan budaya mereka sejak sekitar tahun 1920. ', 'waerebo.jpg'),
(6, 'Wisata Air Terjun Cunca Wulang', 'Manggarai Barat', 'Satu lagi objek wisata air terjun yang ada di kota Manggarai Barat yakni wisata Air Terjun Cuanca Wulang yang hanya berjarak kurang lebih 30 kilometer dari Labuan Bajo yang bisa ditempuh dengan waktu sekitar 1,5  hingga 2 jam  perjalanan. Perjalanan & Transportasi\r\nSeperti objek wisata air terjun sebelumnya yang berada di ketinggian, air terjun Cuanca Wulang juga berada di ketinggian yang lumayan yaitu sekitar 200 mdpl.\r\nDengan begitu pesona alam yang dimiliki pasti sudah terbayang olehmu. Kawasan hijau yang mendominasi membuat udaranya begitu sejuk dan damai.\r\nAliran air terjunnya cukup tinggi dengan airnya yang sejuk dan cukup dingin. Terdapat sebuah kolam atau sungai kecil di bagian bawah aliran air  terjun yang akan menggoda kita untuk segera bermain air di dalamnya.\r\nSelain itu jika kamu tidak berniat mandi atau berenang sekedar merendam kaki bisa menjadi kegiatan yang tidak kalah seru. Buat penyuka oleh raga menantang bisa mencoba aktivitas panjat tebing.', 'AirTerjunCuncaWulang.jpg'),
(7, 'Pantai Gili Labak', 'Manggarai Barat', 'Wisata Manggarai Barat selanjutnya adalah mengunjungi objek wisata Gili Labak. Objek wisata ini merupakan sebuah pulau yang ukurannya tidak terlalu besar dan tak berpenghuni, namun memiliki pemandangan alam yang tiada duanya.\r\nPepohonan hijau yang tumbuh subur di pulau ini bisa dijadikan tempat berteduh dari teriknya matahari tepi laut. Spot – spot foto menarik dan kekinian bisa dengan mudah kita dapatkan.', 'PantaiGiliLabak.jpg'),
(8, 'Danau Rana Mese', 'Manggarai Timur', 'Tempat wisata di Manggarai Timur yang menarik untuk dikunjungi berikutnya adalah danau rana mese yang menawarkan liburan dengan suasana lama yang masih asri.\r\nDanau dengan udara yang cukup dingin ini berada di wilayah hutan lindung dan dikelilingi oleh barisan pegunungan Mandosawu dan Poco Ranaka diantara wilayah kecamatan Borong dan Poco Ranaka.', 'DanauRanaMese.jpg'),
(9, 'Benteng Ranu Hitu', 'Manggarai Timur', ' Benteng Ranu Hitu merupakan situs peninggalan Kerajaan Dirun yang terletak di Bukit Makes, Desa Dirun, Kabupaten Belu, Nusa Tenggara Timur (NTT). Dulunya, berfungi sebagai pertahanan perang tradisional antar suku. Lalu di masa perjuangan kemerdekaan, menjadi markas para pahlawan lokal.\r\n\r\nMasyarakat setempat menyebutnya dengan Benteng Lapis 7, kadang juga disebut sebagai Benteng Makes karena berada di atas Bukit Makes. Sebuah savana yang dikenal dengan sebutan Fulan Fehan yang berada pada ketinggian 1200 mdpl. Sehingga panorama sekitar benteng pun cukup indah, ada savana, tumbuhan berupa kaktus, rumput, dan pohon yang mudah hidup di lahan kars.', 'BentengRanuHitu.jpg'),
(10, 'Pantai Liang Mbala', 'Manggarai Timur', 'Ingin merasakan suasana pantai yang tenang dan damai saat berada di kota Manggarai Timur, maka wisata pantai Liang Bala adalah jawaban yang tepat.\r\nObjek wisata ini sangat menarik untuk dikunjungi karena merupakan panai perawan yang belum begitu banyak dijelajahi pengunjung, sehingga membuat kita merasa berada di pantai pribadi. Gulungan ombak yang tenang juga turut mendukung suasana di tempat ini.\r\nSuasana tenang dan romantis seperti di pantai ini memang cocok sekali buat pasangan yang baru menikah untuk berbulan madu.\r\nSpot – spot keren yang instagramable juga tidak boleh lepas dari bidikan kamera mu. Untuk menjawab rasa penasaran pengunjung bisa datang langsung ke kawasan Perbatasan kelurahan Tanah rata dengan Kota Ndora, Kecamatan Borong, Kabupaten manggarai Timur, NTT', 'PantaiLiangMbala.jpg'),
(11, 'Air Terjun Cunca Rede', 'Manggarai Timur', 'Berlibur ke kota Manggarai Timur di Provinsi Nusa Tenggara Timur belum lengkap rasanya jika belum menghabiskan waktu di wisata Cunca Rede yang merupakan objek wisata air terjun dengan pemandangan alam yang begitu menawan.\r\nKondisi di tempat ini masih sangat alami dengan pepohonan yang tumbuh rindang membuat suasananya sangat sejuk dan nyaman. Selain itu tebing – tebing tinggi yang sudah ditumbuhi tumbuhan liar juga mengelilingi tempat sehingga semakin memancarkan suasana eksotis.\r\nAliran air terjun di tempat ini cukup tinggi dengan debit air yang cenderung stabil. Suasana seperti tentu saja akan membuat pikiran kita menjadi tenang dan damai.\r\nAda beragam aktivitas yang bisa dilakukan seperti mandi atau berenang. Selain itu duduk santai sambil bincang santai bersama teman dan keluarga bisa menjadi aktivitas seru.', 'AirTerjunCuncaRede.jpg'),
(12, 'Kampung Adat Bena', 'Ngada', 'Kampung Adat Bena merupakan salah satu perkampungan megalitik yang terletak di Desa Triwuriwu, Kecamatan Aimere, Kabupaten Ngada, Nusa Tenggara Timur.\r\nKampung Adat Bena yang terletak di puncak bukit merupakan ciri khas masyarakat lama pemuja gunung sebagai tempat para dewa (leluhur).\r\nDi tengah-tengah kampung terdapat bangunan yang disebut bhaga dan ngadhu, Ngadhu merupakan representasi nenek moyang laki-laki sedangkan Bhaga merupakan representasi nenek moyang perempuan.\r\n\r\n', 'KampungadatBena.jpg'),
(13, 'Taman Wisata Alam Laut 17 Pulau Riung\r\n\r\n', 'Ngada', 'TWAL 17 Pulau Riung berada di Kecamatan Riung, sekitar 70 km sebelah utara Kota Bajawa, Ibukota Ngada, Provinsi Nusa Tenggara Timur ( NTT ), Indonesia.\r\n\r\nTaman Wisata Alam Laut 17 Pulau Riung merupakan gugusan pulau kecil dan besar. Total jumlah pulau di Taman Wisata Alam Laut 17 Pulau Riung ini sebanyak 17 pulau, terdiri dari Pulau Wire, Pulau Sui, Pulau Taor, Pulau Tembaga, Pulau Tiga (Pulau Panjang), Pulau Bampa, Pulau Meja, Pulau Rotong, Pulau Patta, Pulau Halima (Pulau Nani), Pulau Besar, Pulau Lainjawa, Pulau Kalong (Pulau Kelelawar), Pulau Dua, Pulau Ontole, Pulau Barong dan Pulau Pau.\r\n\r\nTWAL 17 Pulau Riung ini terdiri atas 24 gugusan pulau-pulau kecil yang cantik. Namun angka 17 diambil sebagai nama untuk mengingat tanggal Kemerdekaan Republik Indonesia.\r\n\r\n', 'TamanWisataAlamLaut17pulau.jpg'),
(14, 'Air Terjun Ogi\r\n\r\n', 'Ngada', 'Air Terjun Ogi di Bajawa di Desa Pape, Kelurahan Faobata, Kecamatan Bajawa, Kabupaten Ngada, Provinsi Nusa Tenggara Timur ( NTT ).\r\n\r\n', 'AirTerjunOgi.jpg'),
(15, 'Gunung Inerie', 'Ngada', 'Gunung Inerie berdiri megah dengan ketinggian 2.227 meter di atas permukaan laut (mdpl). Gunung ini berjarak sekitar 15 kilometer dari Kota Bajawa, ibu kota Kabupaten Ngada, dan menjadi ikon alam bagi masyarakat setempat.\r\n\r\nNama \"Inerie\" berasal dari bahasa lokal, gabungan kata Ine (ibu) dan Rie (cantik), yang berarti \"ibu yang Jelita\". Bentuk kerucutnya yang runcing menyerupai piramida Mesir membuatnya tampak menonjol dalam lanskap Pulau Flores.\r\n\r\n\r\n\r\n', 'GunungInerie.jpg'),
(16, 'Kemah Tabor', 'Ngada', 'Wisatwan mungkin belum banyak yang tahu bawa Flores tidak saja menyimpan keindahan alamai dan budaya yang unik.\r\n\r\nNamun, ada juga tempat untuk menengakan diri dan melepas kesibukan. Tempat itu bernama Rumah Retret Kemah Tabor Mataloko .\r\n\r\nRumah Retret Kemah Tabor Mataloko berada di Desa Mataloko, Kecamatan Golewa, Kabupaten Ngada, Provinsi Nusa Tenggara Timur ( NTT ), Indonesia.\r\n\r\n\r\n', 'KemahTabor.jpeg'),
(17, 'Gunung Ebulobo', 'Nagekeo', 'Gunung Ebulobo adalah gunung berapi yang tidak aktif dan merupakan puncak tertinggi di wilayah Nagekeo.\r\nLokasi Gunung Ebulobo ini ada di wilayah Rega, Boawae, Nagekeo, Nusa Tenggara Timur.\r\nMendaki Gunung Ebulobo menawarkan petualangan mendebarkan dan pemandangan alam yang luar biasa.\r\nDari puncak Gunung Ebulobo, Anda akan disajikan dengan panorama alam yang menakjubkan, termasuk pemandangan lembah, danau, serta gunung-gunung lainnya yang menghiasi lanskap Nagekeo.\r\n\r\n', 'GunungEbulobo.jpg'),
(18, 'Kampung Adat Wogo ', 'Nagekeo', 'Desa Adat Wogo atau Kampung Adat Wogo adalah sebuah desa yang mempertahankan tradisi dan budaya Nagekeo secara autentik.\r\nKampung Adat Wogo ini terletak di Jl. Raya Bajawa-Ende, were, Wogo, Kecamatan Golewa, Kabupaten Ngada, Nusa Tenggara Timur berbatasan dengan Nagekeo.\r\nWisatawan dapat menjelajahi rumah adat, kebun-kebun tradisional, dan menyaksikan upacara adat yang masih dilestarikan hingga saat ini.\r\nKampung Adat Wogo ini menawarkan pandangan mendalam tentang kehidupan masyarakat Nagekeo dan merupakan tempat yang ideal untuk mempelajari warisan budaya mereka.\r\nRumah-rumah adat di Kampung Adat Wogo dibangun dengan arsitektur khas Nagekeo.\r\nDengan atap jerami melengkung khas daerah ini, rumah-rumah ini tidak hanya mempesona dari segi desain tetapi juga mencerminkan keterampilan dan kearifan nenek moyang mereka dalam memanfaatkan bahan alami.', 'KampungAdatWogoNagekeo.jpg'),
(19, 'Kampung Tradisional Kawa', 'Nagekeo', 'Salah satu tempat wisata terbaru yang wajib dikunjungi di Nagekeo yakni Kampung Tradisional Kawa.\r\n\r\nTempat wisata Kampung Tradisional Kawa ini Terletak di Labolewa, Nagekeo, Nusa Tenggara Timur.\r\n\r\nAtau Jarak tempuhnya sekitar 15 kilometer dari Kota Mbay, ibu kota Kabupaten Nagekeo.\r\n\r\nKampung adat ini menawarkan pemandangan alam perbukitan yang indah dan area yang dikelilingi oleh perbukitan hijau.\r\n\r\nApalagi lokasinya berada diantara Gunung Ebuloba dan Amagelu, sehingga memiliki keindahan alam yang mengagumkan.\r\n\r\nWisatawan dapat menikmati suasana damai dan menenangkan di sekitar kampung sambil menikmati pesona alam yang memukau.\r\n\r\nBentuk rumahnya juga unik dan memiliki destinasi perkampungan adat yang sangat unik serta memiliki nilai sejarah, dengan arsitektur rumah adat yang dibangun oleh nenek moyang Nagekeo.', 'KampungTradisionalKawa.jpg'),
(20, 'Pantai Nangaroro', 'Nagekeo', 'Satu lagi destinasi baru di kawasan Nagekeo yang sayang untuk dilewatkan untuk dikunjungi yakni Pantai Nangaroro.\r\nLokasi Pantai Nangaroro ini ada di desa Nangaroro, kabupaten Nagekeo, Nusa Tenggara Timur.\r\nPantai Nangaroro adalah surga tersembunyi yang menawarkan pesona pantai yang belum terjamah oleh kebanyakan turis.\r\nPantai Nangaroro memiliki Pasir yang bersih, air laut yang jernih, dan ombak yang tenang menjadikan pantai ini tempat yang ideal untuk bersantai dan menikmati ketenangan.\r\nBagi para penyelam dan penggemar snorkeling, Pantai Nangaroro juga menyimpan kekayaan bawah laut yang menakjubkan.\r\nApalagi saat senja atau sunset, Pantai Nangaroro juga sangat indah dan menawan.', 'PantaiNangaroro.jpg'),
(21, 'Pantai Ena Gera', 'Nagekeo', 'Pantai Ena Gera adalah pantai lain yang menawarkan ketenangan dan keindahan alam yang menakjubkan.\r\nLokasi Pantai Ena Gera ini ada di Wolotelu, Mauponggo, Nagekeo, Nusa Tenggara Timur.\r\nPantai Ena Gera Dikelilingi oleh tebing-tebing karang yang indah, pantai ini menjadi tempat yang ideal untuk bersantai dan menikmati keindahan laut.\r\nSalah satu sorotan dari kunjungan ke Pantai Boa adalah pemandangan matahari terbenam yang memukau.\r\nPemandangan langit yang berubah warna menjadi latar belakang sempurna untuk momen romantis atau sekadar merenungkan kebesaran alam semesta.', 'PantaiEnaGera.jpg'),
(22, 'Desa Wisata Detusoko Barat', 'Ende', 'Desa Wisata Detusoko Barat berada di ketinggian 800 mdpl, menawarkan areal persawahan terasering, perbukitan hijau, dan atraksi beragam kesenian masyarakat setempat yang masih asri. Saat berkunjung jangan lupa untuk membeli oleh - oleh berupa kopi robusta, langsung dari petaninya.\r\nBerlokasi di kecamatan Detusoko, Kabupaten Ende. Sekitar 50 menit waktu perjalanan dari Bandara H. Hasan Aroeboesman Ende dan 1 jam waktu perjalanan dari Kota Ende, menggunakan kendaraan motor atau mobil.\r\n', 'DesaWisataDetusokoBarat.jpeg'),
(23, 'Kampung Adat Nggela', 'Ende', 'Dari Desa Wisata Detusoko Barat kita bergeser ke Kampung Adat Nggela yang terletak di kaki Gunung Kelibara. Lokasi tepatnya di Desa Nggela, Kecamatan Wolojita, Kabupaten Ende. Kampung ini dikenal memiliki rumah adat Musalaki yang dalam bahasa Ende Lio nya ketua adat atau kepala suku. Rumah adat ini ditempati oleh 17 kepala suku dan merupakan tempat untuk melaksanakan berbagai kegiatan tradisi adat.\r\nDari Desa Wisata Detusoko Barat, anda membutuhkan waktu perjalanan sekitar 1 jam 12 menit dan 2 jam 13 menit perjalanan dari Kota Ende. Sedangkan dari Bandara H. Hasan Aroeboesman Ende membutuhkan waktu perjalanan sekitar 2 jam.\r\n', 'KampungAdatNggela.jpeg'),
(24, 'Kampung Adat Saga', 'Ende', 'Kampung Adat Saga adalah pemukiman Suku Lio atau Sao yang memiliki rumah adat terbuat dari bahan bahan alam seperti bambu, kayu, dan jerami. Selain itu, mereka juga memiliki kesenian tarian Gawi. Tarian ini digunakan untuk merayakan kemenangan dalam peperangan dan dapat dipentaskan di berbagai acara adat lainnya.\r\nDestinasi wisata ini terletak di Kecamatan Detusoko, Kabupaten Ende. Hanya berjarak 24 kilometer dari Kota Ende, NTT. Waktu tempuh perjalanan yang akan ditempuh sekitar 46 menit menggunakan angkutan darat.\r\n', 'KampungAdatSaga.jpeg'),
(25, 'Taman Renungan Bung Karno', 'Ende', 'Saat berkunjung ke Kabupaten Ende, jangan lewatkan wisata Taman Renungan Bung Karno. Saat masa pengasingan, taman ini menjadi tempat favorit Soekarno untuk merenung. Bahkan gagasan tentang Pancasila di dapatkan di taman ini, tepatnya di bawah pohon sukun.\r\nBerkunjung ke taman ini hanya membutuhkan waktu 7 menit dari Kota Ende, NTT. Tepatnya di Kelurahan Kotaraja, Kecamatan Ende Utara, Kabupaten Ende, NTT.', 'TamanRenunganBungKarno.jpeg'),
(26, 'Bukit Roja', 'Ende', 'Jangan lupa untuk mengunjungi Bukit Roja. Ini merupakan bukit yang menyuguhkan pemandangan Gunung meja di sebelah kiri dan Gunung lya di sebelah kanan atau bisa dikatakan ini merupakan pembatas keduanya. Selain itu, bukit ini juga menjadi spot menarik untuk menyaksikan sang surya terbit dari timur.\r\nTerletak di Kelurahan Tetandara, Kecamatan Ende Selatan, Kabupaten Ende, Nusa Tenggara Timur. Membutuhkan waktu perjalanan sekitar 9 menit menggunakan kendaraan darat, lalu dilanjutkan dengan tracking untuk mencapai puncak dengan estimasi waktu 30 menit.\r\n', 'BukitRoja.jpeg'),
(27, 'Bukit Nilo dan Patung Bunda Maria', 'Sikka', 'Bagi para peziarah yang ber agama Katolik, Bukit Nilo ini memiliki arti spiritual yang sangat mendalam. Di atas puncaknya berdiri sebuah patung Bunda Maria Segala Bangsa setinggi 28 meter, menghadap langsung ke arah laut dan kota Maumere. Patung ini bukan hanya menjadi simbol iman, tetapi juga magnet wisata rohani dan religi yang mampu menarik wisatawan dari berbagai penjuru.\r\nAkses menuju Bukit Nilo dapat ditempuh dengan kendaraan pribadi sekitar 30 menit dari pusat kota Maumere. Sesampainya di puncak, wisatawan akan disambut dengan udara sejuk, suara burung-burung liar, dan panorama kota Maumere yang terlihat begitu damai dari kejauhan.\r\n\r\nDaya Tarik: Tempat refleksi dan ziarah dengan pemandangan indah\r\nFasilitas: Area parkir yang luas, toilet umum, dan tempat duduk bagi para peziarah\r\nJarak dari Kota Maumere: ±12 km', 'BukitNilodanPatungBundaMaria.jpg'),
(28, 'Pantai Koka', 'Sikka', 'Pantai Koka bisa dibilang sebagai primadona wisata bahari di Sikka. Pantai ini menawarkan keunikan yang sulit untuk ditemukan di tempat lain karena disini terdapat Dua teluk kecil yang terpisah oleh bukit batu karang sehingga  menciptakan formasi alami yang menyerupai huruf  V. Air lautnya berwarna biru kehijauan, jernih, dan tenang, sehingga membuat siapa pun tergoda untuk berenang atau sekadar bermain air.\r\nPemandangan dari puncak bukit kecil yang memisahkan kedua teluk ini sangat menakjubkan. Dari atas, terlihat hamparan laut Flores yang sangat luas dengan langit biru yang membentang tanpa batas. Suasana di Pantai Koka masih relatif sepi, cocok untuk pelancong yang mencari ketenangan jauh dari keramaian kota.', 'PantaiKoka.jpg'),
(29, 'Pulau Pangabatang', 'Sikka', 'Bagi yang ingin merasakan sensasi “berlibur di pulau pribadi”, Pulau Pangabatang adalah jawabannya. Pulau ini tidak berpenghuni dan dikelilingi dengan pasir putih yang bersih. Perairannya sangat jernih dan tenang, menjadikannya sebagai destinasi wisata yang sempurna untuk snorkeling, camping, atau hanya sekadar piknik sambil menikmati panorama Laut Flores.', 'PulauPangabatang.jpg'),
(30, 'Pantai Waiara', 'Sikka', 'Pantai Waiara adalah sebuah destinasi wisata yang sangat sempurna bagi pencinta keindahan alam bawah laut. Terumbu karangnya masih sangat alami dan warna-warni ikan kecil akan menyambut siapa saja yang menyelam di perairannya. Dengan jarak sekitar 10 km dari Maumere, pantai ini cukup mudah diakses dan sangat cocok untuk snorkeling atau berenang.\r\nDi sekitar pantai terdapat beberapa penginapan dan dive center yang menyewakan perlengkapan selam dan perahu untuk menjelajahi spot diving terdekat.', 'PantaiWaiara.jpg'),
(31, 'Sanggar Lepo Lorun', 'Sikka', 'Sanggar Budaya Lepo Lorun merupakan salah satu sanggar seni dan budaya yang berasal dari wilayah Flores, khususnya di daerah Maumere, Nusa Tenggara Timur. Sanggar ini berperan penting dalam melestarikan dan mengembangkan budaya lokal masyarakat Sikka.\r\nSanggar ini dikenal aktif menampilkan berbagai kesenian tradisional seperti:\r\nTarian adat daerah Sikka (tari perang, tari penyambutan tamu)\r\nMusik tradisional menggunakan alat musik khas Flores\r\nNyanyian daerah yang sarat nilai budaya dan sejarah\r\nNama “Lepo Lorun” sendiri memiliki makna filosofis. Dalam bahasa lokal, lepo berarti “rumah” atau “tempat berkumpul”, sedangkan lorun mengandung makna kebersamaan atau persatuan. Jadi, Lepo Lorun dapat diartikan sebagai tempat berkumpul untuk menjaga dan merawat budaya secara bersama-sama.\r\n\r\nSelain sebagai wadah seni, sanggar ini juga:\r\nMenjadi tempat pembinaan generasi muda agar mencintai budaya lokal\r\nSering tampil dalam acara adat, festival budaya, dan kegiatan pariwisata\r\nBerkontribusi dalam memperkenalkan budaya Flores ke tingkat nasional bahkan internasional\r\nSecara keseluruhan, Sanggar Budaya Lepo Lorun bukan hanya tempat latihan seni, tetapi juga pusat pelestarian identitas budaya masyarakat Sikka yang terus hidup dan berkembang hingga saat ini.', 'SanggarLepoLorun.jpeg'),
(32, 'Danau Asmara', 'Flores Timur', 'Danau Asmara merupakan salah satu objek wisata alam yang menawarkan suasana tenang dan romantis di wilayah Larantuka. Danau ini dikenal dengan airnya yang relatif jernih serta dikelilingi oleh vegetasi hijau yang masih alami, menciptakan pemandangan yang asri dan menenangkan. Nama “Asmara” sendiri sering dikaitkan dengan suasana damai dan keindahan yang cocok untuk pasangan maupun wisatawan yang ingin mencari ketenangan.\r\nDi sekitar danau, pengunjung dapat menikmati udara segar sambil duduk santai atau berjalan kaki di area sekitarnya. Permukaan air yang tenang sering memantulkan langit dan pepohonan, menciptakan panorama yang indah terutama saat pagi dan sore hari. Selain itu, tempat ini juga sering dimanfaatkan sebagai lokasi fotografi alam karena keindahannya yang alami dan belum terlalu ramai oleh wisatawan.', 'DanauAsmara.jpg'),
(33, 'Istana Raja Larantuka', 'Flores Timur', 'Istana Raja Larantuka adalah salah satu situs bersejarah penting yang menjadi saksi kejayaan kerajaan di Flores Timur, khususnya Kerajaan Larantuka yang memiliki pengaruh kuat pada masa lalu. Istana ini tidak hanya berfungsi sebagai tempat tinggal raja, tetapi juga sebagai pusat pemerintahan dan kegiatan adat.\r\nBangunan istana memiliki arsitektur sederhana namun sarat nilai historis. Di dalamnya tersimpan berbagai koleksi benda peninggalan kerajaan, seperti foto raja-raja terdahulu, peralatan upacara adat, serta benda-benda pusaka yang memiliki nilai budaya tinggi. Tempat ini juga erat kaitannya dengan tradisi Katolik di Larantuka, karena raja memiliki peran penting dalam penyelenggaraan ritual keagamaan seperti Semana Santa.\r\nMengunjungi istana ini memberikan pengalaman edukatif bagi wisatawan untuk memahami sejarah, budaya, dan sistem pemerintahan tradisional masyarakat setempat.', 'IstanaRajaLarantuka.jpg'),
(34, 'Kapela Tuan Ma', 'Flores Timur', 'Kapela Tuan Ma merupakan salah satu tempat ibadah Katolik yang paling sakral di Larantuka dan memiliki nilai religius yang sangat tinggi. Kapela ini didedikasikan untuk Bunda Maria (Tuan Ma) dan menjadi pusat devosi umat Katolik, khususnya di wilayah Flores Timur.\r\nTempat ini sangat terkenal karena perannya dalam perayaan Semana Santa, yaitu prosesi Pekan Suci yang telah berlangsung selama ratusan tahun dan menarik peziarah dari berbagai daerah bahkan mancanegara. Dalam tradisi ini, patung Bunda Maria diarak dengan penuh khidmat sebagai bentuk penghormatan dan refleksi iman.\r\nSuasana di Kapela Tuan Ma sangat tenang, penuh kekhusyukan, dan sarat nilai spiritual. Banyak pengunjung datang tidak hanya untuk beribadah, tetapi juga untuk merasakan kedamaian batin serta memahami kekayaan tradisi religius masyarakat Larantuka.', 'KapelaTuanMa.jpg'),
(35, 'Pulau Konga', 'Flores Timur', 'Pulau Konga adalah destinasi wisata bahari yang menawarkan keindahan alam tropis yang masih alami dan belum banyak tersentuh pembangunan. Pulau ini memiliki pantai dengan pasir putih bersih, air laut yang jernih berwarna biru kehijauan, serta ekosistem bawah laut yang kaya akan terumbu karang dan biota laut.\r\nPulau ini sangat cocok untuk aktivitas seperti snorkeling, berenang, maupun sekadar bersantai menikmati suasana pantai yang tenang. Keindahan bawah lautnya menjadikannya tempat yang menarik bagi pecinta wisata bahari. Selain itu, suasana yang masih sepi memberikan pengalaman eksklusif bagi wisatawan yang ingin menikmati alam tanpa keramaian.\r\nPemandangan matahari terbit dan terbenam di Pulau Konga juga menjadi daya tarik tersendiri, menciptakan momen yang indah dan berkesan bagi para pengunjung.', 'PulauKonga.jpg'),
(36, 'Taman Doa Bukit Fatima', 'Flores Timur', 'Taman Doa Bukit Fatima merupakan salah satu destinasi wisata religi yang terletak di atas perbukitan di Larantuka. Tempat ini dikenal sebagai lokasi ziarah umat Katolik yang ingin berdoa dalam suasana yang tenang dan penuh kedamaian.\r\nDi area taman doa terdapat patung Bunda Maria serta jalur Jalan Salib yang digunakan untuk refleksi spiritual. Pengunjung biasanya berjalan mengikuti setiap perhentian sambil merenungkan makna pengorbanan dan iman. Selain nilai religiusnya, tempat ini juga menawarkan panorama alam yang luar biasa. Dari puncak bukit, pengunjung dapat melihat pemandangan kota Larantuka, laut, serta pulau-pulau di sekitarnya.\r\nUdara yang sejuk dan suasana yang sunyi menjadikan tempat ini sangat cocok untuk meditasi, doa pribadi, maupun sekadar mencari ketenangan dari kesibukan sehari-hari.', 'TamanDoaBukitFatima.jpg'),
(37, 'Compang ruteng', 'Manggarai', 'Compang Ruteng merupakan sebuah altar batu berbentuk bundar yang terletak di tengah kampung adat. Compang memiliki makna yang sangat sakral bagi masyarakat Manggarai karena digunakan sebagai tempat pelaksanaan berbagai ritual adat dan persembahan kepada leluhur.\r\nBiasanya, compang dibangun dari susunan batu yang ditinggikan dan berada di pusat permukiman tradisional. Dalam kepercayaan masyarakat setempat, compang dianggap sebagai simbol hubungan antara manusia dengan roh leluhur (mori kraeng). Upacara adat seperti syukuran panen, permohonan hujan, hingga ritual penting lainnya dilakukan di tempat ini.\r\nSelain sebagai tempat ritual, Compang Ruteng juga menjadi daya tarik wisata budaya karena mencerminkan sistem kepercayaan dan kehidupan sosial masyarakat Manggarai yang masih sangat kental dengan tradisi.', 'Compangruteng.jpg'),
(38, 'Kampung Adat Todo', 'Manggarai', 'Kampung Adat Todo merupakan salah satu kampung tertua di Manggarai dan dikenal sebagai pusat pemerintahan kerajaan Manggarai pada masa lampau. Kampung ini memiliki nilai sejarah dan budaya yang tinggi.\r\nDi dalam kampung ini terdapat rumah adat tradisional Manggarai yang khas, serta compang sebagai pusat kegiatan adat. Selain itu, terdapat pula peninggalan sejarah seperti batu-batu megalitikum yang digunakan dalam ritual adat sejak zaman dahulu.\r\nMasyarakat di Kampung Todo masih menjaga tradisi leluhur, baik dalam bentuk rumah adat, sistem sosial, maupun upacara adat. Pengunjung yang datang dapat belajar langsung tentang budaya Manggarai, termasuk cara hidup, adat istiadat, dan nilai-nilai yang diwariskan secara turun-temurun.', 'KampungAdatTodo.jpg'),
(39, 'Persawahan Lingko', 'Manggarai', 'Persawahan Lingko merupakan salah satu ikon wisata Manggarai yang sangat unik karena memiliki pola berbentuk jaring laba-laba. Pola ini berasal dari sistem pembagian tanah adat yang disebut lodok.\r\nDalam sistem ini, tanah dibagi dari satu titik pusat ke arah luar seperti jari-jari lingkaran. Pembagian ini dilakukan secara adil kepada anggota suku atau keluarga berdasarkan kesepakatan adat.\r\nJika dilihat dari atas (biasanya dari bukit), Persawahan Lingko terlihat sangat indah dan artistik, dengan kombinasi warna hijau sawah yang membentuk pola geometris alami. Selain sebagai tempat bercocok tanam, Lingko juga menjadi simbol kebersamaan, keadilan, dan kearifan lokal masyarakat Manggarai.', 'PersawahanLingko.jpg'),
(40, 'Kampung Adat Ruteng Pu\'u', 'Manggarai', 'Kampung Adat Ruteng Pu’u merupakan salah satu destinasi wisata budaya yang terletak tidak jauh dari pusat kota Ruteng, Kabupaten Manggarai. Kampung ini menjadi representasi kehidupan tradisional masyarakat Manggarai yang masih mempertahankan adat istiadat leluhur hingga saat ini.Kampung ini berada di daerah perbukitan dengan udara yang sejuk khas pegunungan. Lingkungannya masih sangat alami, dikelilingi oleh pepohonan dan lahan pertanian masyarakat. Lokasinya yang relatif mudah dijangkau menjadikan Ruteng Pu’u sebagai salah satu kampung adat yang sering dikunjungi wisatawan.', 'Kampungadatrutengpu\'u.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wisata_id` (`wisata_id`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`wisata_id`) REFERENCES `wisata` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
