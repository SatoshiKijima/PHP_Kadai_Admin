-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-12-14 15:35:11
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `kadai_php2`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `bookname` varchar(64) NOT NULL,
  `url` text NOT NULL,
  `bookcomment` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `bookname`, `url`, `bookcomment`, `time`) VALUES
(3, 'aaa', 'iii', 'uuuu', '2022-12-13 22:20:00'),
(4, '夢をかなえるゾウ', 'http://books.google.co.jp/books?id=8G2mjRG7eygC&dq=%E5%A4%A2%E3%82%92%E3%81%8B%E3%81%AA%E3%81%88%E3%82%8B&hl=&source=gbs_api', '「お前なぁ、このままやと2000%成功でけへんで」ダメダメなサラリーマンの前に突然現れた関西弁を喋るゾウの姿をした神様“ガネーシャ”。成功するために教えられたことは「靴をみがく」とか「コンビニで募金する」とか地味なものばかりで...。ベストセラー『ウケる技術』の著者が贈る、愛と笑いのファンタジー小説。', '2022-12-14 23:23:11'),
(5, '思考は現実化する', 'http://books.google.co.jp/books?id=_Xx3AAAACAAJ&dq=%E6%80%9D%E8%80%83%E3%81%AF%E7%8F%BE%E5%AE%9F&hl=&source=gbs_api', 'あなたのこころをドンと揺さぶり、新しい人生を開眼させる世界的名著。ナポレオン・ヒルの「成功哲学」、新装版で登場。', '2022-12-14 23:23:36'),
(6, '王者の成功占術', 'http://books.google.co.jp/books?id=sJl7zgEACAAJ&dq=%E7%8E%8B%E8%80%85%E3%81%AE%E6%88%90%E5%8A%9F&hl=&source=gbs_api', 'あなたの運命を変える!算命学をベースに「才能」を10タイプ×5のチャートで分析。', '2022-12-14 23:25:02'),
(7, 'チェンソーマン', 'https://play.google.com/store/books/details?id=NyOEDwAAQBAJ&source=gbs_api', '悪魔のポチタと共にデビルハンターとして借金取りにこき使われる超貧乏な少年・デンジ。ド底辺の日々は、残忍な裏切りで一変する!!', '2022-12-14 23:25:34'),
(8, '農家はもっと減っていい', 'http://books.google.co.jp/books?id=fZJMzwEACAAJ&dq=%E8%BE%B2%E5%AE%B6%E3%81%AF%E3%82%82%E3%81%A3%E3%81%A8&hl=&source=gbs_api', '「恵まれない農家さんを助けたい」。農業に関心を持つ学生やビジネスパーソンにとって、農家は手を差し伸べる対象として捉えられています。農家の側にも、哀れだと思われていた方が得という人がいて、あえて訛りを強調するような小芝居が入ることすらあるので、注意が必要です。一方、産業化が進む現代の農業は、古い「貧農像」とはかけ離れています。その抱える問題も深く構造的で、浅薄な「善行」で助けられるようなものではないのです。本書では、第一線の農業者である著者が、農業にまつわる古い「常識」を一刀両断。忖度なしの具体的でロジカルな提言で、読者の認識をアップデートし、農業の本当の知的興奮へといざないます。', '2022-12-14 23:25:54');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
