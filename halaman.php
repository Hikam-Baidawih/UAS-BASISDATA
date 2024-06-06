<?php

include("config.php");

$where_clause = "";
$having_clause = "";
$order_clause = "ORDER BY artikel.tanggal_artikel DESC"; // Default ordering

if (isset($_GET['keyword']) && !empty($_GET['keyword'])) {
    $keyword = $_GET['keyword'];
    $where_clause .= " WHERE judul_artikel LIKE '%$keyword%'";
}
if (isset($_GET['kategori']) && !empty($_GET['kategori'])) {
    $kategori = $_GET['kategori'];
    $where_clause .= ($where_clause == "") ? " WHERE" : " AND";
    $where_clause .= " kategori_artikel.id_kategori = $kategori";
}
if (isset($_GET['urutkan_tanggal']) && !empty($_GET['urutkan_tanggal'])) {
    $urutkan_tanggal = $_GET['urutkan_tanggal'];
    if ($urutkan_tanggal == "terbaru") {
        $order_clause = "ORDER BY artikel.tanggal_artikel DESC";
    } elseif ($urutkan_tanggal == "terlama") {
        $order_clause = "ORDER BY artikel.tanggal_artikel ASC";
    }
}
if (isset($_GET['rating']) && !empty($_GET['rating'])) {
    $rating = $_GET['rating'];
    $having_clause .= " HAVING avg_rating <= $rating";
    $order_clause .= ", avg_rating DESC"; // Add this line to sort by rating when filter is applied
}

$sql = "SELECT artikel.*, kategori_artikel.nama_kategori, AVG(rating.nilai) AS avg_rating 
        FROM artikel 
        JOIN kategori_artikel ON artikel.id_kategori = kategori_artikel.id_kategori
        LEFT JOIN rating ON artikel.id_artikel = rating.id_artikel
        $where_clause
        GROUP BY artikel.id_artikel
        $having_clause
        $order_clause";

$query = mysqli_query($koneksi, $sql);

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
        include("aset/sidebar.css");
        ?>* {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .sidebar a.active {
            background-color: #04AA6D;
            color: white;
        }

        .table {
            width: 100%;
        }

        .table_header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: rgb(240, 240, 240);
        }

        .table_header p {
            color: #000000;
        }

        button {
            outline: none;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            padding: 10px;
            color: #ffffff;
        }

        td .edit {
            background-color: #0298cf;
        }

        td .delete {
            background-color: #f80000;
        }

        .search {
            padding: 10px 20px;
            color: #ffffff;
            background-color: #0298cf;
            margin-left: 10px;
        }

        input {
            padding: 10px 20px;
            margin: 0 10px;
            outline: none;
            border: 1px solid #0298cf;
            border-radius: 6px;
            color: #0298cf;
        }

        .table_section {
            height: 650px;
            overflow: auto;
        }

        table {
            width: 100%;
            table-layout: fixed;
            min-width: 1000px;
            border-collapse: collapse;
        }

        thead th {
            position: sticky;
            top: 0;
            background-color: #f6f9fc;
            color: #8493a5;
            font-size: 15px;
        }

        th {
            border-bottom: 1px solid #dddddd;
            padding: 10px 20px;
            word-break: break-all;
            text-align: center;

        }

        .category,
        .aksi, .rate{
            text-align: center;
        }

        .titel {
            width: 200px;
        }

        td {
            border-bottom: 1px solid #dddddd;
            padding: 10px 20px;
            word-break: break-all;
        }


        ::placeholder {
            color: #0298cf;
        }

        ::-webkit-scrollbar {
            height: 5px;
            width: 5px;
        }

        ::-webkit-scrollbar-track {
            box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
        }

        ::-webkit-scrollbar-thumb {
            box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>

<body>

    <div class="sidebar">
        <a class="active" href="halaman.php">Artikel</a>
        <a href="pertanyaan.php">Pertanyaan</a>
        <a href="topArtikel.php">TOP ARTIKEL</a>
        <a href="topTen.php">TOP MEMBER</a>
        <a href="index.php">Log out</a>
    </div>

    <div class="content">
        <div class="table">
            <div class="table_header">
                <h2>ARTIKEL</h2>
                <div>
                    <form action="halaman.php" method="GET">
                        <input type="text" name="keyword" placeholder="Cari artikel...">
                        <select name="rating">
                            <option value="">Berdasarkan Rating</option>
                            <option value="10"><=10</option>
                            <option value="9"><=9</option>
                            <option value="8"><=8</option>
                            <option value="7"><=7</option>
                            <option value="6"><=6</option>
                            <option value="5"><=5</option>
                            <option value="4"><=4</option>
                            <option value="3"><=3</option>
                            <option value="2"><=2</option>
                            <option value="1"><=1</option>
                        </select>
                        <select name="urutkan_tanggal">
                            <option value="">Berdasarkan Waktu</option>
                            <option value="terbaru">Terbaru</option>
                            <option value="terlama">Terlama</option>
                        </select>
                        <select name="kategori">
                            <option value="">Semua Kategori</option>
                            <?php
                            $sql_kategori = "SELECT * FROM kategori_artikel";
                            $query_kategori = mysqli_query($koneksi, $sql_kategori);
                            while ($kategori = mysqli_fetch_array($query_kategori)) {
                                echo "<option value='{$kategori["id_kategori"]}'>{$kategori["nama_kategori"]}</option>";
                            }
                            ?>
                        </select>
                        <button class="search" type="submit">Cari & Filter</button>
                    </form>

                </div>
            </div>
            <div class="table_section">
                <table>
                    <thead>
                        <tr>
                            <th>Judul Artikel</th>
                            <th>Kategori</th>
                            <th>Tanggal</th>
                            <th>Rating</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php
                        // Tampilkan hasil query
                        while ($artikel = mysqli_fetch_array($query)) {
                            echo "<tr>";
                            echo "<td class='titel'>{$artikel['judul_artikel']}</td>";
                            echo "<td class='category'>{$artikel['nama_kategori']}</td>";
                            echo "<td class='category'>{$artikel['tanggal_artikel']}</td>";
                            echo "<td class='rate'>" . number_format($artikel['avg_rating'], 2) . "</td>";
                            
                            echo "<td class='aksi'> 
                            <a href='viewArtikel.php?id={$artikel["id_artikel"]}'><button class='edit'><i class='fa-regular fa-eye'></i></button></a>
                            </td>";

                            echo "</tr>";
                        }

                        ?>


                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>

</html>
