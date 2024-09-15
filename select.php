<?php
//1.  DB接続します
session_start();
require_once('funcs.php');


// //２．データ取得SQL作成
$pdo = db_conn();
$stmt = $pdo->prepare("SELECT * FROM gs_bookmark_table");
$status = $stmt->execute();

// //３．データ表示
if ($status == false) {
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:" . $error[2]);
}
?>


<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>レシピ本一覧表示</title>
  <link href="css/style.css" rel="stylesheet">
</head>

<body id="main">
  <header>
    <nav>
      <a href="index.php">データ登録画面へ</a>
    </nav>
  </header>

  <main>
    <div class="container">
      <h1>おすすめレシピ本一覧</h1>
      <input type="text" id="search-input" placeholder="検索...">
      <table>
        <tr>
          <th>日付</th>
          <th>書籍名</th>
          <th>URL</th>
          <th>コメント</th>
          <th>操作</th>
        </tr>

        <!-- PHP でデータを取得し、以下の形式で表示する -->
        <?php while ($result = $stmt->fetch(PDO::FETCH_ASSOC)): ?>
          <tr>
            <td><?= htmlspecialchars($result['date'], ENT_QUOTES, 'UTF-8') ?> :
            <td>❖<?= htmlspecialchars($result['book_name'], ENT_QUOTES, 'UTF-8') ?>❖
            <td><a href="<?= htmlspecialchars($result['book_url'], ENT_QUOTES, 'UTF-8') ?>"><?= htmlspecialchars($result['book_url'], ENT_QUOTES, 'UTF-8') ?></a></td>
            <td><?= htmlspecialchars($result['book_comment'], ENT_QUOTES, 'UTF-8') ?>
            <td>
              <a href="detail.php?id=<?= htmlspecialchars($result['id'], ENT_QUOTES, 'UTF-8') ?>">編集</a>
              <a href="delete.php?id=<?= htmlspecialchars($result['id'], ENT_QUOTES, 'UTF-8') ?>" onclick="return confirm('本当に削除しますか？')">削除</a>
            </td>
          </tr>
        <?php endwhile; ?>

      </table>
    </div>
  </main>
  <script src='js/script.js'></script>
</body>

</html>