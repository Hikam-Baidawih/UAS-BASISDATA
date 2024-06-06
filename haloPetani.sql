CREATE TABLE admin (

    id_admin INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama_admin VARCHAR(260) NOT NULL,
    password_admin VARCHAR(260) NOT NULL    
);


CREATE TABLE pengguna (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama_lengkap VARCHAR(260) NOT NULL,
    no_hp VARCHAR(260) NOT NULL,
    password VARCHAR(260) NOT NULL,
    quality_points INT DEFAULT 0,
    tanggal_gabung DATE
);

CREATE TABLE tanaman (
    id_tanaman INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    jenis_tanaman VARCHAR(260) NOT NULL 
);

CREATE TABLE kategori_artikel (
    id_kategori INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nama_kategori VARCHAR(255) NOT NULL
);


CREATE TABLE artikel (

    id_artikel INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    judul_artikel VARCHAR(300) NOT NULL,
    isi_artikel LONGTEXT NOT NULL,
    id_kategori INT NOT NULL,
    tanggal_artikel DATE NOT NULL,
    id_rating INT,
    FOREIGN KEY(id_kategori) REFERENCES kategori_artikel(id_kategori)
);

CREATE TABLE rating (
    id_rating INT AUTO_INCREMENT PRIMARY KEY,
    id_artikel INT NOT NULL,
    id_pengguna INT NOT NULL,
    nilai FLOAT,
    FOREIGN KEY (id_artikel) REFERENCES artikel(id_artikel),
    FOREIGN KEY (id_pengguna) REFERENCES pengguna(id)
);


CREATE TABLE pertanyaan (
    id_pertanyaan INT AUTO_INCREMENT PRIMARY KEY,
    isi_pertanyaan TEXT NOT NULL,
    gambar VARCHAR(260),
    id_user INT NOT NULL,
    id_tanaman INT NOT NULL,
    tanggal DATE NOT NULL,
    FOREIGN KEY (id_user) REFERENCES pengguna(id),
    FOREIGN KEY (id_tanaman) REFERENCES tanaman(id_tanaman)
);

CREATE TABLE jawaban (
    id_jawaban INT AUTO_INCREMENT PRIMARY KEY,
    id_pertanyaan INT NOT NULL,
    jawaban TEXT NOT NULL,
    id_user INT NOT NULL,
    likes INT DEFAULT 0,
    rating INT DEFAULT 0,
    tanggal DATE NOT NULL,

    FOREIGN KEY (id_pertanyaan) REFERENCES pertanyaan(id_pertanyaan),
    FOREIGN KEY (id_user) REFERENCES pengguna(id)
);



CREATE TABLE laporan_pertanyaan (
    id_laporanPertanyaan INT AUTO_INCREMENT PRIMARY KEY,
    id_pertanyaan INT NOT NULL,
    id_user INT NOT NULL,
    tanggal DATE NOT NULL,
    FOREIGN KEY (id_user) REFERENCES pengguna(id),
    FOREIGN KEY (id_pertanyaan) REFERENCES pertanyaan(id_pertanyaan) ON DELETE CASCADE
);

CREATE TABLE laporan_jawaban (
    id_laporanJawaban INT AUTO_INCREMENT PRIMARY KEY,
    id_jawaban INT NOT NULL,
    id_user INT NOT NULL,
    tanggal DATE NOT NULL,
    FOREIGN KEY (id_user) REFERENCES pengguna(id),
    FOREIGN KEY (id_jawaban) REFERENCES jawaban(id_jawaban) ON DELETE CASCADE
);

INSERT INTO admin (nama_admin, password_admin) VALUES
('Admin1', 'password1'),
('Admin2', 'password2');

INSERT INTO pengguna (nama_lengkap, no_hp, password, quality_points, tanggal_gabung) VALUES
('User1', '081234567890', 'password1', 10, '2024-01-01'),
('User2', '081234567891', 'password2', 20, '2024-01-02'),
('User3', '081234567892', 'password3', 30, '2024-01-03'),
('User14', '081234567803', 'password14', 110, '2024-04-01'),
('User15', '081234567804', 'password15', 120, '2024-04-10'),
('User16', '081234567805', 'password16', 130, '2024-05-05'),
('User17', '081234567806', 'password17', 140, '2024-05-15'),
('User18', '081234567807', 'password18', 150, '2024-06-01'),
('User19', '081234567808', 'password19', 160, '2024-06-10'),
('User20', '081234567809', 'password20', 170, '2024-06-24'),
('User21', '081234567810', 'password21', 180, '2024-06-25'),
('User22', '081234567811', 'password22', 190, '2024-06-26'),
('User23', '081234567812', 'password23', 200, '2024-06-27'),
('User24', '081234567813', 'password24', 210, '2024-06-28'),
('User25', '081234567814', 'password25', 220, '2024-06-29'),
('User26', '081234567815', 'password26', 230, '2024-06-30');


INSERT INTO tanaman (jenis_tanaman) VALUES
('Padi'),
('Jagung'),
('Kedelai');

INSERT INTO kategori_artikel (nama_kategori) VALUES
('Pertanian Umum'),
('Teknologi Pertanian'),
('Manajemen Pertanian');

INSERT INTO artikel (judul_artikel, isi_artikel, id_kategori, tanggal_artikel) VALUES
('Cara Menanam Padi', 'Isi artikel tentang cara menanam padi...', 1, '2024-01-10'),
('Teknologi Terbaru di Pertanian', 'Isi artikel tentang teknologi terbaru...', 2, '2024-01-11'),
('Manajemen Lahan Pertanian', 'Isi artikel tentang manajemen lahan...', 3, '2024-01-12');

INSERT INTO rating (id_artikel, id_pengguna, nilai) VALUES
(1, 1, 5),
(2, 2, 4),
(3, 3, 3);

INSERT INTO pertanyaan (isi_pertanyaan, gambar, id_user, id_tanaman, tanggal) VALUES
('Bagaimana cara mengatasi hama pada padi?', NULL, 1, 1, '2024-02-01'),
('Apa pupuk terbaik untuk jagung?', NULL, 2, 2, '2024-02-02'),
('Kapan waktu terbaik menanam kedelai?', NULL, 3, 3, '2024-02-03');

INSERT INTO jawaban (id_pertanyaan, jawaban, id_user, likes, tanggal) VALUES
(1, 'Anda bisa menggunakan pestisida organik.', 2, 0, '2024-02-04'),
(2, 'Pupuk urea sangat bagus untuk jagung.', 3, 0, '2024-02-05'),
(3, 'Waktu terbaik adalah saat awal musim hujan.', 1, 0, '2024-02-06');

INSERT INTO laporan_pertanyaan (id_pertanyaan, id_user, tanggal) VALUES
(1, 2, '2024-02-07'),
(2, 3, '2024-02-08');

INSERT INTO laporan_jawaban (id_jawaban, id_user, tanggal) VALUES
(1, 3, '2024-02-09'),
(2, 1, '2024-02-10');
