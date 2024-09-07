<?php
// 1.  DB接続します
require_once('funcs.php');
$pdo = db_conn();

// 2. ID取得
$id = $_GET['id'];

// 3. データ削除SQL作成
$stmt = $pdo->prepare("DELETE FROM gs_bookmark_table WHERE id = :id");
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

// 4. データ削除処理後
if ($status == false) {
    sql_error($stmt);
  } else {
    redirect('select.php');
  }
?>