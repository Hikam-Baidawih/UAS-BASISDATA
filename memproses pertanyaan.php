<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $question = $_POST['question'];

    // Validasi data jika diperlukan

    // Simpan data ke database atau kirim email
    // Contoh mengirim email:
    $to = "your-email@example.com";
    $subject = "Pertanyaan dari " . $name;
    $message = "Nama: " . $name . "\nEmail: " . $email . "\n\nPertanyaan:\n" . $question;
    $headers = "From: " . $email;

    if (mail($to, $subject, $message, $headers)) {
        echo "Pertanyaan berhasil dikirim!";
    } else {
        echo "Terjadi kesalahan, silakan coba lagi.";
    }
} else {
    echo "Invalid request.";
}
?>
