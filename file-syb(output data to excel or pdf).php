<?php
require 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// Contoh data dari database
$data = [
    ['Title', 'Author', 'Category'],
    ['Book 1', 'John Doe', 'Novel'],
    ['Book 2', 'Jane Smith', 'Fiction'],
];

// Buat spreadsheet baru
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

// Isi data ke spreadsheet
foreach ($data as $row => $value) {
    $sheet->fromArray($value, NULL, 'A' . $row);
}

// Buat writer untuk menulis file excel
$writer = new Xlsx($spreadsheet);

// Buat nama file excel
$filename = 'library_data.xlsx';

// Tulis file excel ke browser
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment; filename="' . $filename . '"');
$writer->save('php://output');