<?php
//クロスサイトスクリプティングを防ぐ 
//hが下が効いた状態で動く
function h($str)
{
    return htmlspecialchars($str, ENT_QUOTES);
}
//select.php 描写するときにhtmlspecialcharsで<script>タグで悪さされたものが文字列として入力される

//1.  DB接続します
try {
  //Password:MAMP='root',XAMPP=''
  $pdo = new PDO('mysql:dbname=kadai_php2;charset=utf8;host=localhost','root',''); 
} catch (PDOException $e) {
  exit('DBConnectError'.$e->getMessage());
}

//２．データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table;"); //あるデータベースから抜き出すからそのままでOK
$status = $stmt->execute(); //実行するPHPのClassを理解しないと-＞は理解できない

//３．データ表示
$view="";
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{ 
  // 成功した場合
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){ //データのある分だけとってきてResultに反映させる
    $view .= '<p>' . $result['id']. '/' . h($result['bookname']) . '/'  . h($result['url']) . '/'  . $result['bookcomment'] . '/'  . $result['time'] . '</p>'; //viewの中にresultのnameを格納する
  }   
// .=にすることで追加する　.がないと上書きしてしまう
//こうすることで魔法をまとった状態で$入力されたものが実行される//
}
?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>書籍ログ表示</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="index.php">データ登録</a>
      </div>
    </div>
  </nav>
</header>
<!-- Head[End] -->
<!-- Main[Start] -->
<div>
    <div class="container jumbotron"><?= $view ?></div> 
   
</div>
<!-- Main[End] -->

</body>
</html>
