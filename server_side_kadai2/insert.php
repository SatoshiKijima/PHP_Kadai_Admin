<?php

/**
 * 1. index.phpのフォームの部分がおかしいので、ここを書き換えて、
 * insert.phpにPOSTでデータが飛ぶようにしてください。
 * 2. insert.phpで値を受け取ってください。
 * 3. 受け取ったデータをバインド変数に与えてください。
 * 4. index.phpフォームに書き込み、送信を行ってみて、実際にPhpMyAdminを確認してみてください！
 */

//1. POSTデータ取得
$name =$_POST['bookname'];
$url =$_POST['url'];
$content =$_POST['bookcomment'];

//2. DB接続します　おまじない　
try {
  //ID:'root', Password: xamppは 空白 ''
  $pdo = new PDO('mysql:dbname=kadai_php2;charset=utf8;host=localhost','root',''); //root,hostなど環境によって異なる

} catch (PDOException $e) {
  exit('DBConnectError:'.$e->getMessage());
}
// tryで接続してみて、エラーをcatchしたらexitで処理して

//３．データ登録SQL作成

// 1. SQL文を用意
$stmt = $pdo->prepare("INSERT INTO 
                        gs_bm_table(id,bookname,url,bookcomment,time) 
                        VALUES(NULL,:name,:url,:content,sysdate()) " ); //ここにSQL文を書く 「：」を値の場所に入れて一旦変数化する危険だから

//  2. バインド変数を用意・・bindValueでルール付けしたものを（PDO何たらを通して）:nameに入れましょうとして安全性を担保する
// Integer 数値の場合 PDO::PARAM_INT
// String文字列の場合 PDO::PARAM_STR
//SQLインジェクション
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':url', $url, PDO::PARAM_STR);
$stmt->bindValue(':content', $content, PDO::PARAM_STR);


//  3. 実行
$status = $stmt->execute();

//４．データ登録処理後
if($status === false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit('ErrorMessage:'.$error[2]);
}else{
  //成功したら５．index.phpへリダイレクト
header('Location: index.php');

}
?>
