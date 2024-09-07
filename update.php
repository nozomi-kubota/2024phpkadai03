<?php
// 1. POSTデータ取得
$date = $_POST['date'];
$book_name = $_POST['book_name'];
$book_url = $_POST['book_url'];
$book_comment = $_POST['book_comment'];
$id = $_POST['id'];

// 2. DB接続します
require_once('funcs.php');
$pdo = db_conn();

// 3. データ更新SQL作成
$stmt = $pdo->prepare("UPDATE gs_bookmark_table SET date = :date, book_name = :book_name, book_url = :book_url, book_comment = :book_comment WHERE id = :id");
$stmt->bindValue(':date', $date, PDO::PARAM_STR);
$stmt->bindValue(':book_name', $book_name, PDO::PARAM_STR);
$stmt->bindValue(':book_url', $book_url, PDO::PARAM_STR);
$stmt->bindValue(':book_comment', $book_comment, PDO::PARAM_STR);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

// 4. データ更新処理後
if ($status == false) {
    sql_error($stmt);
} else {
    redirect('select.php');
}
