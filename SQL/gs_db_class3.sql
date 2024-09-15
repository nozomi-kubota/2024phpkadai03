-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-09-15 15:11:36
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db_class3`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `age`, `email`, `content`, `date`) VALUES
(6, 'ディカプリオ', 40, 'test6@test.jp', 'メモ', '2022-09-22 16:07:48'),
(7, '山田太郎', 20, 'test7@test.jp', 'テスト', '2022-09-22 17:14:36'),
(9, 'テスト９', 20, 'test9@test.jp', '自分', '2022-09-22 18:13:28'),
(10, 'TEST10', 20, 'test10@test.jp', 'ウイスキー', '2022-09-29 05:19:42'),
(12, 'くぼた　の', 20, 'test@t.jp', 'サンプル入力', '2024-08-15 15:27:03'),
(13, 'くぼた　２', 22, 'test2@t.jp', '特に無し', '2024-08-15 15:50:43');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bookmark_table`
--

CREATE TABLE `gs_bookmark_table` (
  `id` int(11) NOT NULL,
  `book_name` varchar(64) NOT NULL COMMENT '書籍名',
  `book_url` text NOT NULL COMMENT '書籍URL',
  `book_comment` text NOT NULL COMMENT '書籍コメント',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_bookmark_table`
--

INSERT INTO `gs_bookmark_table` (`id`, `book_name`, `book_url`, `book_comment`, `date`) VALUES
(1, '頑張らない冷凍弁当', 'https://amzn.asia/d/esPT9LY', '簡単で便利/少し編集', '2024-08-15 16:53:53'),
(2, 'macaroniが教える　失敗しないお菓子作りの基本', 'https://amzn.asia/d/3SScbS5', 'お菓子作りの基本から上級者向けテクニックまで', '2024-08-15 20:14:20'),
(3, '一流シェフのレシピ大全 ', 'https://amzn.asia/d/8HE04dm', '一流の味が簡単に（編集しました）', '2024-08-15 20:15:13'),
(4, '一流料理長の 和食宝典', 'https://amzn.asia/d/6tj1Rbm', '日本料理のコツはこちらで', '2024-08-15 20:18:13'),
(5, 'かんたんレンジ料理', 'https://amzn.asia/d/2WJsbzq', 'シンプルが一番。レンジで完結(追記)', '2024-08-16 17:35:26'),
(6, 'カフェごはん レンジで絶品レシピ', 'https://amzn.asia/d/2WJsbzq', '本当に、本当にカンタン！美味しい！', '2024-09-07 21:43:06'),
(7, '免疫力をあげるレシピ', 'https://amzn.asia/d/0L0P0oP', '健康に良いだけでなく、美味しそうなおしゃれなお料理が作れる(編集しました)', '2024-09-08 04:36:57'),
(9, '一流シェフ②', 'https://amzn.asia/d/8HE04dm', '一流シェフ②ログインテスト', '2024-09-08 18:12:03'),
(10, '頑張らない冷凍弁当', 'https://amzn.asia/d/esPT9LY', '簡単で便利', '2024-09-08 21:45:35'),
(11, 'レンチン! 糖質オフの作りおき', 'https://amzn.asia/d/bNm35L0', 'レンジでチンするだけ', '2024-09-14 20:37:33');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(64) NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', '$2y$10$nO68UG4XY/8Zus81mc4BhefkyshEsIW45y3ir6a1XhqUP0KqRAWMe', 1, 0),
(2, 'テスト2_ユーザー2', 'test2', '$2y$10$JxMH3049F64UC2wGUwl1Ke3Ga9eBXgZYdEL/Q2NZNT5BkWOeR5cYq', 0, 0),
(3, 'テスト３', 'test3', '$2y$10$5HfeVhW2kg8/V5LiLQiUqe4iKN67NvVxqQ.WDauW7hkKc7qa4AFCK', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_bookmark_table`
--
ALTER TABLE `gs_bookmark_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルの AUTO_INCREMENT `gs_bookmark_table`
--
ALTER TABLE `gs_bookmark_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- テーブルの AUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
