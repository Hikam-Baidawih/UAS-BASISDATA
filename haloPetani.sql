-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 05:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `halo_petani`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(260) NOT NULL,
  `password_admin` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `password_admin`) VALUES
(1, 'Admin1', 'password1'),
(2, 'Admin2', 'password2');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(300) NOT NULL,
  `isi_artikel` longtext NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `tanggal_artikel` date NOT NULL,
  `id_rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `id_kategori`, `tanggal_artikel`, `id_rating`) VALUES
(1, 'Cara Menanam Padi', 'Isi artikel tentang cara menanam padi...', 1, '2024-01-10', NULL),
(2, 'Teknologi Terbaru di Pertanian', 'Isi artikel tentang teknologi terbaru...', 2, '2024-01-11', NULL),
(3, 'Manajemen Lahan Pertanian', 'Isi artikel tentang manajemen lahan...', 3, '2024-01-12', NULL),
(4, 'PROSES PENANAMAN JAMUR MENGGUNAKAN TEKNIK HIDROPONIK ', 'Seperti cara menanam cabe hidroponik dalam polybag, ada beberapa langkah persiapan agar nantinya anda bisa menanam jamur secara hidroponik dengan baik, yaitu:\r\n\r\nBeli kit tumbuh jamur dari toko perlengkapan berkebun didaerah Anda. Kit adalah blok serbuk gergaji terkompresi yang telah dijenuhkan dengan biji jamur.\r\nBenamkan blok jamur di dalam wadah air dingin. Pastikan itu benar-benar terbenam dan biarkan beberapa cm air untuk menutupi bagian atas blok.\r\nBiarkan balok merembes selama beberapa jam. Blok jamur harus benar-benar jenuh.\r\nTempatkan wadah di tempat yang gelap dan sejuk. Suhu harus berkisar antara 60ºF dan 75ºF (15.6ºC hingga 23.8ºC).\r\nPanen tanaman jamur Anda. Kebanyakan jamur hidroponik siap dipanen dalam 3 hingga 5 hari.\r\nBiarkan blok serbuk gergaji beristirahat selama seminggu dan kemudian ulangi prosesnya. Benamkan balok dalam air dingin dan biarkan hingga benar-benar jenuh sebelum Anda menempatkannya di tempat yang gelap dan sejuk.\r\nGunakan kembali blok serbuk gergaji setiap minggu sampai Anda tidak lagi mendapatkan panen yang baik. Berapa kali Anda dapat menggunakan kembali blok Anda akan tergantung pada berapa banyak waktu yang dibutuhkan untuk nutrisi menjadi habis.\r\nAduk blok serbuk gergaji di tumpukan kompos Anda ketika tidak lagi menghasilkan jamur. Anda kemudian dapat memulai proses dengan kit jamur baru.\r\n2. Cara Menumbuhkan Jamur Hidroponik tanpa Kit Jamur\r\n\r\nJika anda ingin menumbuhkan jamur tanpa menggunakan kit jamur seperti cara menanam cabe hidroponik sistem sumbu, maka berikut caranya :\r\n\r\nMulailah pertumbuhan jamur Anda dengan jamur segar atau spora jamur. Keduanya dapat dibeli secara online atau di pusat berkebun lokal Anda. Ini diperlukan untuk menumbuhkan miselium (fungus). Jika diinginkan, Anda dapat membeli miselium cair untuk memulai proses.\r\nTempatkan potongan kecil jamur, spora atau kultur pada cawan Petri steril, yang memungkinkan miselium tumbuh. Miselium harus tumbuh sampai cukup kuat untuk mendukung siklus reproduksi jamur.\r\nBiarkan jamur tumbuh di cawan Petri. Ini kemungkinan besar akan memakan waktu beberapa minggu.\r\nPindahkan jamur ke bulir yang disterilkan, seperti gandum atau rye. Ini akan memakan waktu hingga 4 minggu untuk jamur untuk menjajah gandum.\r\nMulai panen jamur Anda ketika mereka mulai tumbuh di gandum. Periksa kemajuan mereka setiap beberapa hari setelah mereka menjajah gandum.\r\nGunakan biji gandum Anda untuk menumbuhkan lebih banyak biji-bijian. Anda kemudian dapat menggunakan biji-bijian itu untuk spora jamur Anda berikutnya.\r\n3. Nutrisi dan Perawatan\r\n\r\nSama seperti pada hidroponik biasa, spora jamur membutuhkan substrat yang tumbuh. Setelah media tumbuh ini diinokulasi dengan spora, miselium akan segera berkembang, berfusi, dan mengkolonisasi substrat. Agar ini terjadi, media tumbuh harus mengandung nutrisi dalam beberapa bentuk.\r\n\r\nSekali lagi, ini karena anda menanam jamur, tidak seperti tumbuhan, jamur tidak membuat  atau memproduksi makanan sendiri.\r\n\r\nNutrisi yang diberikan pada jamur dikonsumsi sebagai satu-satunya bentuk energi mereka, sama seperti kehidupan binatang yang berkelanjutan. Ini berarti bahwa jamur harus diberi energi dengan beberapa bentuk gula atau karbohidrat agar dapat berkembang.\r\nMedia tumbuh yang direkomendasikan untuk digunakan pada jamur adalah vermiculite. Sebagai sumber nutrisi, vermikulit dicampur dengan tepung beras merah dan sedikit air dan dibentuk menjadi substrat yang disterilkan. Sistem hidroponik jamur umumnya terdiri atas tangki kecil yang diisi dengan agregat tanah liat yang diperluas, pemanas air, alat pengukur kelembaban, lampu, dan pompa udara dengan pelekatan batu udara.\r\nPemanas air dan batu udara ditempatkan di bagian bawah tangki, ditutupi dengan kerikil agregat dan kemudian sepenuhnya tenggelam dalam air dengan kue vermiculite diinokulasi ditempatkan di atas. Udara akan dipompa dari filter udara melalui batu udara untuk mengoksidasi air saat dipanaskan dengan lembut.\r\nJika tangki disimpan di atas 70% kelembaban dan lampu dibiarkan selama enam jam sehari, lingkungan yang sangat lembab dan beroksigen dari tangki akan membujuk miselium menjadi berbuah dan jamur akan menghasilkan.\r\nSementara metode pertumbuhan ini bervariasi secara radikal dari hidroponik tradisional, metode ini masih merupakan metode tak dinyalakan yang menghasilkan produk dalam ruangan segar.\r\nJamur yang dapat tumbuh dengan sendiri nya juga berarti tidak ada pestisida atau pupuk buatan dan jaminan bahwa makanan Anda aman. Jangan lupa untuk selalu meperhatikan dan mengelola budidaya jamur hidroponik anda tersebut.\r\n\r\n4. Memilih Humidifet Terbaik\r\n\r\nSalah satu jalur utama menuju sukses untuk budidaya jamur adalah mempertahankan kelembapan yang tepat pada saat yang tepat dari siklus pertumbuhan jamur. Jamur bisa terdiri dari 90% air, dan membutuhkan tingkat kelembapan yang tinggi untuk memulai menjepit dan mendorong perkembangan yang sehat.\r\n\r\nTerlalu kering dan substrat Anda akan retak dan mengahislkan tidak terlalu banyak buah. Jika terlalu basah Anda akan memiliki masalah dengan bercak bakteri dan hama jahat lainnya yang dapat merusak pertumbuhan yang baik.\r\n\r\nMenentukan pelembab yang tepat untuk situasi Anda dapat menoptimalkan budidaya, jadi mari kita memecah opsi yang berbeda sehingga Anda dapat menentukan apa yang terbaik untuk pengaturan tumbuh jamur Anda sendiri.\r\n\r\nBotol Semprot : Jika Anda hanya memiliki ruang pembuahan kecil, hal ini cukup dengan menggunakan botol semprot. Pelajari tentang ruang berbuah di sini. Cukup semprotkan dinding ruangan dan kipas angin di udara segar. Cobalah untuk mengaburkan kamar Anda beberapa kali sehari untuk menjaga kelembaban yang tinggi secara konsisten. Cobalah untuk tidak menyemprotkan substrat jamur secara langsung, karena ini dapat merusak buah.\r\nWicking Humidifiers : Juga disebut humidifier evaporative adalah langkah dari botol semprot sederhana. Umumnya, humidifier akan disalurkan ke ruang berbuah dengan memasang pipa PVC ke saluran keluar unit. Humidifiers ini sederhana, dan bekerja dengan wicking air dari reservoir dan mendistribusikannya ke area yang lebih besar.\r\nThe Ultrasonic Humidifier: Jika Anda benar-benar ingin melihat keberhasilan tumbuh jamur, Anda bertaruh untuk mendapatkan humidifier ultrasonik. Pelembap ini bekerja menggunakan cakram berputar yang menguapkan tetesan air yang kemudian dipompa keluar dari unit dan masuk ke ruangan Anda. Anda dapat meningkatkan kelembaban relatif kamar Anda hingga 100% tanpa terlalu banyak masalah.\r\nTips\r\n\r\nJamur tumbuh lebih cepat dengan air dingin jangan gunakan air hangat untuk merendamnya.\r\nJika Anda membeli labu miselium cair, simpan dalam kantong kertas di kulkas sampai Anda siap menggunakannya.\r\nPeringatan\r\nJamur dapat terkontaminasi dengan bakteri dan jamur lainnya. Pastikan Anda menanam jamur hidroponik di lingkungan yang steril.\r\nJamur Anda tidak akan tumbuh kecuali mereka ditempatkan di tempat gelap. Jika perlu, gunakan nuansa gelap untuk melindungi jamur dari cahaya.\r\nJangan gunakan air yang mengandung klor untuk merendam blok jamur Anda. Jika air keran Anda terklorinasi, Anda dapat mengisi wadah dengan air keran dan membiarkannya selama 24 jam agar klorin akan menghilang.\r\n', 2, '2024-06-06', NULL),
(5, 'PROSES PENANAMAN DUREN', '1. Pengolahan Lahan\r\nTanah dibersihkan dari rumput, sisa tebangan, tanaman liar, kemudian dicangkul atau dibajak..\r\nDi sekitar taman, saluran drainase kita perlu dibuat untuk menghindari genangan air.\r\nKegiatan pengolahan lahan kita dilakukan sebelum datang musim hujan.\r\n2. Penanaman Durian\r\nJarak tanam 10 x 10 M untuk jenis yang jatuh masa tanam lebih awal, dan 12 x 12 M untuk jenis durian sedang dan dalam.\r\nLubang tanam dengan ukuran 80 x 80 x 70 cm atau 70 x 70 x 60 cm atau disesuaikan dengan jenis tanah dan kondisi tanah, penggalian tanah bagian atas (20 cm) dipisahkan dari tanah galian bawah dan dibiarkan 2- 3 minggu.\r\nLubang tanam ditutup kembali, dengan tanah galian pertama setelah dicampur dengan + 30 kg / lubang pupuk organik / pupuk kompos.\r\nPenanaman dilakukan pada awal musim hujan di sore hari sehingga benih yang sudah ditanam tidak langsung terkena sinar matahari.\r\nBibit ditanam sekitar 5 cm di atas pangkal batang dan diikatkan pada batang kayu / bambu sehingga tanaman bisa tumbuh tegak lurus.\r\nBenih yang telah ditanam harus diarsir untuk menghindari sengatan matahari yang berat. Naungan dapat dibongkar setelah tanaman berumur 3-5 bulan.\r\nTanah di sekitar tanaman harus ditutup dengan jerami / jerami sebagai mulsa, sehingga kelembaban tanah bisa stabil.\r\n3. Pemeliharaan Durian\r\nPenyiangan, dilakukan untuk membuang gulma yang tumbuh di sekitar tanaman (1 m dari batang pohon) yang akan mengganggu pertumbuhan tanaman.\r\nPenyiraman, hal-hal yang perlu diperhatikan :\r\nTahap awal pertumbuhan penyiraman dilakukan setiap hari pagi dan sore hari, tetapi tanah tidak boleh tergenang terlalu lama (terlalu basah).\r\nKebutuhan air pada masa vegetatif 4-5 L/hari dan pada masa produktif 10-12 L/hari.\r\nSetelah tanaman berumur satu bulan penyiraman dilakukan 3x/minggu. Jika tanaman sudah berbuah, penyiraman harus diperhatikan karena kalau kekurangan air dapat mengakibatkan kerontokan buah.\r\nTanaman durian akan membutuhkan banyak air setelah panen karena diperlukan untuk memulihkan kondisi tanaman menjadi normal kembali.\r\nPemupukan pada tanaman yang belum berbuah, dilakukan dengan dosis\r\nPemupukan NPK (15:15:15) dilakukan 2 kali/tahun, dengan dosis sbb:\r\nTanaman umur 1 tahun, dosis pupuk NPK 40 – 80 gr/pohon/tahun.\r\nTanaman umur 2 tahun, dosis pupuk NPK 150 – 300 gr/pohon/tahun.\r\nTanaman umur 3 – 4 tahun, dosis pupuk NPK 400 – 600 gr/pohon/tahun.\r\nPupuk organic/kompos/pupuk kandang diberikan setahun sekali pada akhir musim hujan dengan dosis minimal 15-20kg/pohon.\r\nPemupukan pada tanaman yang sudah menghasilkan/berbuah, dengan dosis/pohon\r\nSesudah pemangkasan, pupuk organik 40-60 kg, urea 670 gr, SP-36 890 gr, KCl 530 gr\r\nSaat pucuk mulai menua, urea 335 gr, SP-36 445 gr, KCl 265gr\r\nDua bln setelah pemupukan kedua, urea 180 gr, SP-36 650 gr, KCl 150 gr\r\nSaat muncul bunga, urea 45 gr, SP-36 225 gr, KCl 100 gr\r\nSatu bulan sbelum panen, urea 180 gr, SP-36 650 gr, KCl 150gr.\r\nCara Memupuk Durian\r\nDibuat selokan melingkari tanaman dengan garis tengah selokan disesuaikan dengan lebarnya tajuk pohon. Kedalaman selokan dibuat 20-30 cm dan tanah cangkulan disisihkan di pinggirnya. Sesudah pupuk disebarkan secara merata ke dalam selokan, tanah tadi dikembalikan untuk menutup selokan dan diratakan. Apabila tanah dalam keadaan kering segera lakukan penyiraman.\r\n\r\nPemangkasan Akar Durian\r\nPemangkasan akar akan menghambat pertumbuhan vegetatif tanaman sampai 40% selama 1 musim. Selama itu pula tanaman tidak dipangkas. Pemangkasan akar selain membuat tanaman menjadi cepat berbuah juga meningkatkan kualitas buah, buah lebih keras dan lebih tahan lama.\r\nWaktu pemotongan akar paling baik pada saat tanaman mulai berbunga, paling lambat 2 minggu setelah berbunga. Jika dilakukan melewati batas, hasil tanaman durian diiris sedalam 60-90 cm dan sejauh 1,5-2 meter dari panen berkurang dan pertumbuhan terhambat.\r\nCara pemotongan: kedua sisi barisan pangkal batang.\r\nPemangkasan Bentuk\r\nTanaman sudah berumur 1 tahun.\r\nPelihara satu batang utama, potong calon cabang primer yang tidak diinginkan (cabang dengan pertumbuhan terlalu panjang, tidak normal atau terserang hama & penyakit), cabang-cabang primer terpilih diatur jaraknya sekitar 40-60 cm.\r\nPertumbuhan cabang diarahkan supaya mendatar atau membentuk sudut sekitar 90 derajat dengan batang utama, dengan mengikat pucuk cabang dengan tali yang diberi pemberat.\r\nTunas-tunas liar yang tumbuh di cabang terpilih harus dipangkas dan sisakan 1-2 cm dari pangkal cabang.\r\nTinggi tanaman dipertahankan sekitar 4 m dari permukaan tanah dan cabang terendah berjarak 0,7-1 m dari permukaan tanah.\r\nOleskan pada bagian yang dipangkas dengan ter/meni/pestisida.\r\nCara Perawatan Durian\r\nTanaman sudah mulai berproduksi pertama\r\nMemangkas cabang bersudut kecil, cabang dan ranting yang terserang hama & penyakit. Pemangkasan ranting pada cabang besar/produktif dibersihkan dengan menyisakan 1/3 bagian ujung\r\nMemangkas cabang/tunas liar yang tumbuh tidak pada tempatnya\r\nMemangkas dahan dan ranting yang rapat, bersilangan atau tersembunyi/terlindung\r\nMemangkas dahan dan rantingyang lemah serta tajuk bagian atas yakni turun 1 ruas pada ujung ranting (terminal)\r\nMemangkas dahan dan ranting yang pertumbuhannya ke arah dalam tajuk atau ke arah bawah\r\nPertahankan ketinggian optimal 3-4 m atau 5-6 m\r\nOleskan pada bagian yang dipangkas dengan ter/meni/pestisida.\r\nPenyerbukaan Buatan\r\nMengumpulkan serbuk sari dalam kantong plastic bersih dengan menggoyang-goyangkan bunga atau disapu dengan kuas halus\r\nMelakukan penyerbukan buatan pada malam hari jam 19.00-21.00, dengan mengoleskan serbuk sari ke kepala putik memakai kuas halus.\r\nPenjarangan Buah Durian\r\nPenjarangan buah bertujuan untuk mencegah kematian durian agar tidak menghabiskan energinya untuk proses pembuahan. Penjarangan berpengaruh terhadap kelangsungan hidup, rasa buah, ukuran buah dan frekuensi pembuahan setiap tahunnya. Penjarangan dilakukan bersamaan dengan proses pengguguran bunga, begitu gugur bunga selesai, besoknya harus dilakukan penjarangan (tidak boleh ditunda-tunda).\r\n\r\nPenjarangan\r\nPenjarangan secara mekanis\r\nPada saat buah sebesar bola tenis dengan menyisakan tiap dompol 1-2 buah dengan bentuk normal, sehat dan bebas dari hama & penyakit,\r\nBuah tidak saling bersinggungan dengan membuat jarak antara dompol dalam satu cabang 20-30 cm.\r\n\r\nPenjarangan kimiawi\r\nDengan menyemprotkan hormon tertentu (Auxin A), pada saat bunga atau bakal buah baru berumur sebulan. Pada saat itu sebagian bunga sudah terbuka dan sudah dibuahi. Ketika hormon disemprotkan, bunga yang telah dibuahi akan tetap meneruskan pembuahannya sedangkan bunga yang belum sempat dibuahi akan mati dengan sendirinya.\r\n\r\nHama dan Penyakit pada Durian\r\nHama\r\nPenggerek buah (Jawa : Gala-gala), bagian yang diserang buah\r\nGejala, buah yang diserang kadang-kadang jatuh sebelum tua. Pengendalian dilakukan dengan cara :\r\n\r\nKultur teknis yaitu\r\nmembungkus/membrongsong buah terpilih sejak dini\r\npengasapan di bawah pohon pada sore hari untuk mengusir imago\r\nMekanis yaitu, mengumpulkan buah yang terserang hama dan gugur untuk dimusnahkan/dikubur\r\nBiologis yaitu, menggunakan semut rang-rang untuk mengusir imago atau menggunakan musuh alami lain yaitu lalat Tachinidea (Argyroplax basifulfa), Ventura, sp.\r\nKimiawi yaitu, penyemprotan insektisida, seperti Basudin, Sumithion 50 AC, Thiodan 35 EC, dengan dosis 2-3 cc/liter air.\r\nLebah mini, gejala, bagian yang diserang ranting dan daun.\r\nGejala: penggerekan ranting-ranting muda dan memakan daun- daun muda. Pengendalian yaitu, menggunakan parvasida, seperti Hostathion 40 EC (Triazofos 420 gram/liter), dan insektisida, seperti Supracide 40 EC dosis 420 gram/liter dan Temik 106 (Aldikarl 10%).\r\n\r\nUlat penggerek bunga\r\nGejala : kuncup bunga terserang akan rusak dan putiknya banyak yang berguguran, benang sari dan tajuk bunga rusak semua, sedangkan kuncup dan putik patah karena luka digerek ulat. Pengendalian yaitu, menyemprotkan obat-obatan seperti Supracide 40 EC, Nuvacrom SWC, Perfekthion 400 EC (Eimetoat 400 gram/liter).\r\n\r\nBaca Juga: 8 Cara Menanam Bayam Cabut Yang Baik Dan Benar (Biji & Batang)\r\n\r\nKutu loncat durian, bagian yang diserang daun\r\nGejala : kutu loncat bergerombol menyerang pucuk daun yang masih muda dengan cara menghisap cairan pada tulang-tulang daun sehingga daun-daun akan kerdil dan pertumbuhannya terhambat; setelah menghisap cairan, kutu ini mengeluarkan cairan getah bening yang pekat rasanya manis dan merata ke seluruh permukaan daun sehingga mengundang semut-semut bergerombol.\r\n\r\nPengendalian dilakukan dengan cara :\r\n\r\nKultur teknis yaitu, dilakukan sanitasi kebun terutama daun kering\r\nMekanis yaitu, daun dan ranting-ranting yang terserang dipangkas dan dimusnahkan\r\nKimiawi yaitu, menyemprotkan insektisida Supracide 40 EC dosis 100-150 gram/5 liter air.\r\nPenggerek batang dan cabang.\r\nGejala : adanya lubang kecil bekas gerekan pada batang, dahan atau ranting dan mengeluarkan cairan dan kotoran berwarna kemerahan, akibatnya tanaman kering, daun layu/rontok dan mati.\r\n\r\nPengendalian dapat dilakukan dengan cara :\r\n\r\nKultur teknis, sanitasi kebun dari gulma dan tanaman inang seperti tanaman jeruk, kopi, kakao, sirsak dll.\r\nMekanis, memotong bagian tanaman yang terserang 5 cm di bawah lubang gerek, kemudian membakarnya supaya larva mati atau memasukkan kawat ke dalam lubang gerekan sehingga larva mati karena tertusuk kawat.\r\nBiologis, menggunakan musuh alami yaitu Brazon zeuzerae (fam. Tachinidea) dan cendawan Beauveria bassiana.\r\nKimiawi, aplikasi parafin karbolinium plantarum dengan dosis 2 cc/L atau menginfus tanaman menggunakan insektisida sistemik melalui batang atau ujung akar.\r\nRayap, bagian yang terserang batang.\r\nGejala : adanya alur atau terowongan dari tanah yang menempel di batang.\r\n\r\nPengendalian dilakukan dengan cara :\r\n\r\nKultur teknis yaitu, membersihkan kebun dari sisa bonggol kayu atau gulma dan membersihkan batang tanaman dari alur/terowongan rayap\r\nKimiawi yaitu, menggunakan Furadan disekeliling pohon dengan dosis 30-50 gr/pohon atau aplikasi insektisida Decis 2,5 EC, Diazinon 600 EC sesuai dosis anjuran.\r\nKumbang daun dan buah muda\r\nGejala : adanya perubahan warna pada bagian yang terserang (warna perunggu) serta permukaan atas daun terdapat bercak berwarna kekuningan.\r\n\r\nPengendalian dilakukan dengan cara:\r\n\r\nBiologis, menggunakan musuh alami predator dari Fam. Coccinellidae dan Chrysophidae.\r\nKimiawi, aplikasi akarisida Antimit 570 EC (bahan aktif progargit) dosis 7 cc/liter.\r\nPenggerek biji\r\nGejala : lubang pada kulit buah kemudian masuk ke dalam daging buah hingga ke dalam biji.\r\n\r\nPengendalian dapat dilakukan dengan cara :\r\n\r\nKultur teknis yaitu, memusnahkan buah dan biji yang terserang\r\nMekanis yaitu,\r\n• membungkus/membrongsong buah terpilih sejak dini\r\n• pengasapan di bawah pohon pada sore hari untuk mengusir imago\r\nKimiawi yaitu, penyemprotan dengan insektisida terdaftar dan berijin, dilakukan setelah tanaman selesai berbunga.\r\nKutu dompolan, bagian yang terserang bunga dan buah\r\nGejala : bunga dan buah muda yang terserang menjadi gugur. Pengendalian dilakukan dengan cara :\r\n\r\nKultur teknis yaitu\r\nPemupukan dan pengairan yang seimbang, sesuai rekomendasi\r\nhindarkan tanaman durian dari tanaman inang hama\r\nMekanis yaitu, sanitasi lingkungan dengan memusnahkan bagian tanaman yang terserang dan membersihkan gulma di sekitar tanaman durian\r\nBiologis yaitu,\r\n• pemanfaatan musuh alami seperti semut hitam, cendawan parasit Empusa fresenil, atau predator Cryptolaemus montrouzieri\r\n• penggunaan insektisida botani seperti larutan umbi bawang putih dicampur cabai\r\nKimiawi yaitu\r\n• aplikasi insektisida bila dijumpai kerusakan buah 20% setelah penjarangan ketiga\r\n• mencegah datangnya semut yang membawa kutu, dengan cara melilitkan kain, yang telah dibasahi insektisida, pada batang/cabang tanaman.\r\nTupai, bagian yang terserang buah\r\nGejala : bagian permukaan kulit buah rusak sampai bagian daging buah.\r\n\r\nPengendalian dilakukan dengan cara :\r\n\r\nMekanis yaitu\r\nmelakukan pembersihan tanaman terutama pada bagian yang menjadi sarang tupai\r\nmengusir tupai dengan cara gropyokan, perangkap,atau menembak dengan senapan angin\r\nKimiawi yaitu, dengan umpan buah-buahan yang sudah diberi racun, seperti Klerat atau Furadan.\r\nBaca Juga: 18 Cara Mudah Budidaya Pisang Kepok Yang Benar “Panen Melimpah”\r\n\r\nPenyakit\r\nPhytopthora parasitica dan Pythium complectens\r\nGejala : daun durian yang terserang menguning dan gugur mulai dari daun yang tua; cabang pohon kelihatan sakit dan ujung- ujungnya mati, diikuti dengan berkembangnya tunas-tunas dari cabang di bawahnya; kulit di atas permukaan tanah menjadi coklat dan membusuk; pembusukan pada akar hanya terbatas pada akar-akar sebelah bawah, tetapi dapat meluas dari ujung akar lateral sampai ke akar tunggang; dilihat dari luar akar yang sakit tampak normal, tetapi jaringan kulitnya menjadi colat tua dan jaringan pembuluh menjadi merah jambu.\r\nPengendalian dilakukan dengan cara :\r\n\r\nKultur teknis\r\npilih bibit durian kerikil untuk batang bawah karena jenis ini lebih tahan terhadap serangan jamur sehingga dapat terhindar dari serangan penyakit busuk\r\nupayakan drainase yang baik agar tanah tidak terlalu basah dan air tidak mengalir ke permukaan tanah pada waktu hujan\r\nMekanis yaitu, pohon yang sakit dibongkar sampai ke akarnya dan dibakar\r\nKanker batang\r\nGejala : kulit batang durian yang terserang mengeluarkan blendok (gum) yang gelap; jaringan kulit berubah menjadi merah kelam, coklat tua atau hitam; bagian yang sakit dapat meluas ke dalam sampai ke kayu; daun-daun rontok dan ranting-ranting muda dari ujung mulai mati.\r\n\r\nPengendalian dilakukan dengan cara :\r\n\r\nKultur teknis yaitu :\r\nPerbaikan drainase agar air hujan tidak mengalir di permukaan tanah\r\nmenanam tanaman yang tahan terhadap penyakit tersebut\r\nmemangkas daun yang tidak produktif untuk mengurangi kelembaban kebun\r\nd) melakukan rotasi tanaman\r\ne) melakukan pemupukan dengan pupuk organik/kandang yang dicampur kapur dan mengupayakan pH tanah 6,5\r\nMekanis yaitu, eradikasi tanaman sakit parah/mati, kulit yang sakit dikerok/dibuang sampai bagian yang sehat kemudian dibakar. Luka kerokan dibuat oval meruncing di bagian tas dan bawah sehingga luka cepat tertutup. Luka kerokan kemudian diolesi fungisida dan ditutup dengan karbolinum\r\nBiologis yaitu, aplikasi jamur antagonis, Trichoderma harzianum, ke permukaan tanah\r\nKimiawi yaitu, mengkored/mengupas kulit yang sakit sampai ke kayunya yang sehat dan potongan tanaman yang sakit harus dibakar, sedangkan bagian yang terluka diolesi fungisida, misalnya Difolatan 4 F 3%.\r\nJamur upas, bagian yang diserang cabang tanaman\r\nGejala : pada cabang-cabang dan kulit kayu terdapat benang- benang jamur mengkilat seperti sarang laba-laba pada cabang-cabang. Jamur berkembang menjadi kerak berwarna merah jambu dan masuk ke dalam kulit dan kayu sehingga menyebabkan matinya cabang.\r\n\r\nPengendalian dilakukan dengan cara :\r\n\r\nKultur teknis yaitu, memangkas bagian tanaman yang tidak produktif untuk mengurangi kelembaban\r\nMekanis yaitu, jika jamur sudah membentuk kerak merah jambu sebaiknya dilakukan pemotongan cabang kira-kira lebih 30 cm ke bawah ke bagian yang berjamur dan dimusnahkan\r\nKimiawi\r\n• Melumasi cabang yang terserang dengan fungisida, misalnya calizin RM\r\n• menyemprotkan Antrocol 70 WP (propineb 70,5%), dosis 100-200 gram/liter air atau 1-1,5 kg/ha aplikasi.\r\nBusuk buah\r\nGejala awal serangan terdapat bercak-bercak basah berwarna coklat kehitaman pada kulit buah, kemudian busuk pada bagian yang terserang terbentuk miselium dan sporangia berwarna putih.\r\n\r\nPengendalian dilakukan dengan cara :\r\n\r\nBaca Juga: 16 Usaha Budidaya Tanaman Yang Menguntungkan Saat Ini\r\n\r\nKultur teknis\r\nPerbaikan drainase supaya tanah tidak terlalu basah/lembab\r\nareal pertanaman dibersihkan dari tanaman inang patogen seperti pepaya, nenas, jeruk dan coklat\r\nMekanis\r\nmemangkas daun dan dahan yang kurang diperlukan untuk mengurangi kelembaban\r\npemusnahan buah yang terserang penyakit\r\nmenghindari buah hasil panen bersentuhan dengan tanah\r\ntinggi cabang terbawah minimal 1 m\r\nBusuk akar\r\nGejala : timbulnya bercak nekrotik pada akar lateral dimulai dari bagian ujung; pada tingkat serangan yang tinggi, di atas permukaan tanah terdapat ujung cabang pohon yang mati, diikuti dengan berkembangnya dari cabang di bawahnya, daun layu dan gugur.\r\n\r\nPengendalian dilakukan dengan cara :\r\n\r\nKultur teknis yaitu,\r\nperbaikan drainase agar tanah tidak terlalu lembab/basah\r\npenggunaan batang bawah yang tahan penyakit\r\nMekanis yaitu,\r\nmenghindari luka mekanis pada bagian akar dan pangkal batang pada waktu pemeliharaan tanaman\r\nmembongkar (eradikasi) tanaman yang terserang berat dan akarnya dimusnahkan\r\nKimiawi yaitu, menggunakan fungisida sistemik dengan cara dikocorkan atau diinfuskan ke akar\r\nBercak daun.\r\nGejala : adanya bercak-bercak kecil basah pada daun yang semakin melebar, daun kemudian mengering dan gugur. Pengendalian dilakukan dengan cara :\r\n\r\nKultur teknis yaitu, memperlebar jarak tanam.\r\nKimiawi yaitu, penyemprotan fungisida dan penyiraman yang teratur sejak dari pembibitan', 4, '2024-06-06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `jawaban` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `likes` int(11) DEFAULT 0,
  `rating` int(11) DEFAULT 0,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `id_pertanyaan`, `jawaban`, `id_user`, `likes`, `rating`, `tanggal`) VALUES
(1, 1, 'Anda bisa menggunakan pestisida organik.', 2, 0, 5, '2024-02-04'),
(2, 2, 'Pupuk urea sangat bagus untuk jagung.', 3, 0, 2, '2024-02-05'),
(3, 3, 'Waktu terbaik adalah saat awal musim hujan.', 1, 0, 5, '2024-02-06'),
(4, 4, 'MENURUT SAYA KASIH PADI PESTISIDA\r\n', 1, 0, 4, '2024-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_artikel`
--

INSERT INTO `kategori_artikel` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Pertanian Umum'),
(2, 'Teknologi Pertanian'),
(3, 'Manajemen Pertanian'),
(4, 'HIDROPONIK');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_jawaban`
--

CREATE TABLE `laporan_jawaban` (
  `id_laporanJawaban` int(11) NOT NULL,
  `id_jawaban` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_jawaban`
--

INSERT INTO `laporan_jawaban` (`id_laporanJawaban`, `id_jawaban`, `id_user`, `tanggal`) VALUES
(1, 1, 3, '2024-02-09'),
(2, 2, 1, '2024-02-10'),
(3, 2, 1, '2024-06-06'),
(4, 4, 1, '2024-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_pertanyaan`
--

CREATE TABLE `laporan_pertanyaan` (
  `id_laporanPertanyaan` int(11) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_pertanyaan`
--

INSERT INTO `laporan_pertanyaan` (`id_laporanPertanyaan`, `id_pertanyaan`, `id_user`, `tanggal`) VALUES
(1, 1, 2, '2024-02-07'),
(2, 2, 3, '2024-02-08'),
(3, 2, 1, '2024-06-06'),
(4, 2, 1, '2024-06-06'),
(5, 4, 1, '2024-06-06'),
(6, 4, 1, '2024-06-06'),
(7, 4, 1, '2024-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(260) NOT NULL,
  `no_hp` varchar(260) NOT NULL,
  `password` varchar(260) NOT NULL,
  `quality_points` int(11) DEFAULT 0,
  `tanggal_gabung` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama_lengkap`, `no_hp`, `password`, `quality_points`, `tanggal_gabung`) VALUES
(1, 'hikam', '081234567890', 'baidawih123', 10, '2024-01-01'),
(2, 'rafli', '081234567891', '123', 20, '2024-01-02'),
(3, 'faris', '081234567892', '123', 30, '2024-01-03'),
(4, 'kokoh', '081234567803', '123', 110, '2024-04-01'),
(5, 'dimas', '081234567804', '123', 120, '2024-04-10'),
(6, 'farhan', '081234567805', '123', 130, '2024-05-05'),
(7, 'furqon', '081234567806', '123', 140, '2024-05-15'),
(8, 'dika', '081234567807', '123', 150, '2024-06-01'),
(9, 'fadli', '081234567808', '123', 160, '2024-06-10'),
(10, 'kareem', '081234567809', '123', 170, '2024-06-24'),
(11, 'roland', '0821345637', '123', 180, '2024-06-25'),
(12, 'lintang', '081234567811', '123', 190, '2024-06-26'),
(13, 'ronald', '081234567812', '123', 200, '2024-06-27'),
(14, 'rocky', '081234567813', '123', 210, '2024-06-28'),
(15, 'kaila', '081234567814', '123', 220, '2024-06-29'),
(16, 'meyra', '081234567815', '123', 230, '2024-06-30'),
(17, 'joww', '085156011390', 'miftah', 0, '2024-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `isi_pertanyaan` text NOT NULL,
  `gambar` varchar(260) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `id_tanaman` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id_pertanyaan`, `isi_pertanyaan`, `gambar`, `id_user`, `id_tanaman`, `tanggal`) VALUES
(1, 'Bagaimana cara mengatasi hama pada padi?', NULL, 1, 1, '2024-02-01'),
(2, 'Apa pupuk terbaik untuk jagung?', NULL, 2, 2, '2024-02-02'),
(3, 'Kapan waktu terbaik menanam kedelai?', NULL, 3, 3, '2024-02-03'),
(4, 'BAGAIMANA CARA MENANAM PADI', 'uploads/Screenshot 2024-05-28 075501.png', 1, 1, '2024-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id_rating` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `nilai` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id_rating`, `id_artikel`, `id_pengguna`, `nilai`) VALUES
(1, 1, 1, 5),
(2, 2, 2, 3),
(3, 3, 3, 3),
(4, 3, 2, 8),
(5, 3, 1, 7.5),
(6, 2, 17, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tanaman`
--

CREATE TABLE `tanaman` (
  `id_tanaman` int(11) NOT NULL,
  `jenis_tanaman` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanaman`
--

INSERT INTO `tanaman` (`id_tanaman`, `jenis_tanaman`) VALUES
(1, 'Padi'),
(2, 'Jagung'),
(3, 'Kedelai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `id_pertanyaan` (`id_pertanyaan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `laporan_jawaban`
--
ALTER TABLE `laporan_jawaban`
  ADD PRIMARY KEY (`id_laporanJawaban`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_jawaban` (`id_jawaban`);

--
-- Indexes for table `laporan_pertanyaan`
--
ALTER TABLE `laporan_pertanyaan`
  ADD PRIMARY KEY (`id_laporanPertanyaan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pertanyaan` (`id_pertanyaan`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_tanaman` (`id_tanaman`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id_rating`),
  ADD KEY `id_artikel` (`id_artikel`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `tanaman`
--
ALTER TABLE `tanaman`
  ADD PRIMARY KEY (`id_tanaman`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `laporan_jawaban`
--
ALTER TABLE `laporan_jawaban`
  MODIFY `id_laporanJawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `laporan_pertanyaan`
--
ALTER TABLE `laporan_pertanyaan`
  MODIFY `id_laporanPertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id_rating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tanaman`
--
ALTER TABLE `tanaman`
  MODIFY `id_tanaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_artikel` (`id_kategori`);

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_ibfk_1` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan` (`id_pertanyaan`),
  ADD CONSTRAINT `jawaban_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id`);

--
-- Constraints for table `laporan_jawaban`
--
ALTER TABLE `laporan_jawaban`
  ADD CONSTRAINT `laporan_jawaban_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id`),
  ADD CONSTRAINT `laporan_jawaban_ibfk_2` FOREIGN KEY (`id_jawaban`) REFERENCES `jawaban` (`id_jawaban`) ON DELETE CASCADE;

--
-- Constraints for table `laporan_pertanyaan`
--
ALTER TABLE `laporan_pertanyaan`
  ADD CONSTRAINT `laporan_pertanyaan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id`),
  ADD CONSTRAINT `laporan_pertanyaan_ibfk_2` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan` (`id_pertanyaan`) ON DELETE CASCADE;

--
-- Constraints for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD CONSTRAINT `pertanyaan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id`),
  ADD CONSTRAINT `pertanyaan_ibfk_2` FOREIGN KEY (`id_tanaman`) REFERENCES `tanaman` (`id_tanaman`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`id_artikel`) REFERENCES `artikel` (`id_artikel`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
