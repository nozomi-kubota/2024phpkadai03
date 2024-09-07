<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>レシピ本登録</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <!-- Head[Start] -->
    <header>
        <nav>
            <a href="select.php">登録データ一覧へ</a>
        </nav>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <main>
        <!-- insert.phpで入力した内容が送られる -->
        <form method="POST" action="insert.php">
            <fieldset>
                <legend>おすすめレシピ本登録フォーム</legend>
                <label for="book_name">書籍名</label>
                <input type="text" id="book_name" name="book_name" required placeholder="山田 太郎">

                <label for="book_url">書籍URL</label>
                <input type="url" id="url" name="book_url" required placeholder="https://">

                <label for="book_comment">コメント</label>
                <textarea id="content" name="book_comment" rows="6" required placeholder="書籍の内容や感想などをご入力ください"></textarea>

                <input type="submit" value="登録する">
            </fieldset>
        </form>
    </main>
    <!-- Main[End] -->


</body>

</html>