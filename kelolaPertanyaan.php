<?php
include("config.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <style>
        <?php 
    <div class="sidebar">
        <a href="dashboard.php">Artikel</a>
        <a href="jenisTanaman.php">Tanaman</a>
        <a href="kategoriArtikel.php">Kategori Artikel</a>
        <a class="active" href="kelolaPertanyaan.php">Daftar Pertanyaan</a>
        <a href="kelolaJawaban.php">Daftar Jawaban</a>
        <a href="index.php">Log out</a>
    </div>

    <div class="content">
        <div class="table">
            <div class="table_header">
                <p>List Pertanyaan</p>
            </div>
            <div class="table_section">
                <table>
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Pertanyaan</th>
                            <th>Laporan</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sql = "SELECT pertanyaan.id_pertanyaan, pertanyaan.isi_pertanyaan, COUNT(laporan_pertanyaan.id_laporanPertanyaan) as jumlah_laporan 
                                FROM pertanyaan 
                                LEFT JOIN laporan_pertanyaan ON pertanyaan.id_pertanyaan = laporan_pertanyaan.id_pertanyaan GROUP BY pertanyaan.id_pertanyaan
                                ORDER BY jumlah_laporan DESC
";
                        $result = mysqli_query($koneksi, $sql);
                        $i = 1;

                        while ($pertanyaan = mysqli_fetch_array($result)) {
                            echo "<tr>";
                            echo "<td>{$i}</td>";
                            echo "<td>{$pertanyaan['isi_pertanyaan']}</td>";
                            echo "<td>{$pertanyaan['jumlah_laporan']}</td>";
            
                            echo "<td> 
                                <a href='deletePertanyaan.php?id={$pertanyaan["id_pertanyaan"]}'><button class='delete'><i class='fa-solid fa-trash'></i></button></a>
                                </td>";
                            echo "</tr>";
                            $i++;
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>

</html>