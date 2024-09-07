<?php
// 1. DB接続します
require_once('funcs.php');
$pdo = db_conn();

// 2. データ取得SQL作成
$id = $_GET['id'];
$stmt = $pdo->prepare("SELECT * FROM gs_bookmark_table WHERE id = :id");
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

// 3. データ表示
if ($status == false) {
    sql_error($stmt);
} else {
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登録内容編集</title>
    <link href="css/style.css" rel="stylesheet">
</head>

<body id="main">
    <header>
        <nav>
            <a href="select.php">ブックマーク一覧</a>
        </nav>
    </header>
    <main>
        <div class="container">
            <h1>登録内容の編集</h1>
            <form method="post" action="update.php">
                <input type="hidden" name="id" value="<?= htmlspecialchars($result['id'], ENT_QUOTES, 'UTF-8') ?>">
                <label for="date">日付:</label>
                <input type="text" name="date" value="<?= htmlspecialchars($result['date'], ENT_QUOTES, 'UTF-8') ?>"><br>
                <label for="book_name">書籍名:</label>
                <input type="text" name="book_name" value="<?= htmlspecialchars($result['book_name'], ENT_QUOTES, 'UTF-8') ?>"><br>
                <label for="book_url">URL:</label>
                <input type="text" name="book_url" value="<?= htmlspecialchars($result['book_url'], ENT_QUOTES, 'UTF-8') ?>"><br>
                <label for="book_comment">コメント:</label>
                <textarea name="book_comment"><?= htmlspecialchars($result['book_comment'], ENT_QUOTES, 'UTF-8') ?></textarea><br>
                <input type="submit" value="登録内容を更新">
            </form>
        </div>
    </main>
    <script src='js/script.js'></script>
</body>

</html>