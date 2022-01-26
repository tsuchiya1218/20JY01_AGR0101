<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="Shift_JIS"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="../css/sample.css" />
<title>滝沢's Library</title>
</head>
<body>
<!-- 画面全体(frame) -->
<div id="frame">
	<%
	// セッションよりメールアドレスを取得する
	String email = (String)session.getAttribute("email");
	// セッションより名前を取得する
	String custName = (String)session.getAttribute("custName");
	// セッションより電話番号を取得する
	String tel = (String)session.getAttribute("tel");
	// セッションより生年月日を取得する
	String birth = (String)session.getAttribute("birth");
	// セッションより性別を取得する
	String sex = (String)session.getAttribute("sex");
	%>
	<!-- 画面のヘッダー部分(frame_header) -->
	<div id="frame_header"><h1><a href="c_home.jsp">滝沢's Library</a></h1></div>
	
	<!-- 画面のボディ部分(frame_body) -->
	<div id="frame_body">
		<!-- サブメニュー（submenu） -->
		<div id="submenu">
			<div id="submenu_header">Menu</div>
			<ul id="submenu_body">
				<li><a href="c_uw02_01.jsp">予約する</a></li>
				<li><a href="c_uw02_01.jsp">定期券購入</a></li>
				<li><a href="c_uw02_01.jsp">定期券継続</a></li>
			</ul>
		</div>

		<!-- メイン表示（main） -->
		<div id="main">
			<!-- メイン表示のヘッダー部分(main_header) -->
			<div id="main_header">
				<h2>入力内容確認</h2>
                <!-- メイン表示のユーザー表示部分(main_userwindow) -->
				<table class="main_userwindow">
					<tr>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>

			<!-- メイン表示の説明文部分(main_overview) -->
            <div id="main_overview">
                <p>お客様が入力された内容の確認を行います。</p>
                <p>以下の内容で登録を行ってよろしいでしょうか。</p>
                <p>再び入力される場合は、「修正」ボタンをクリックしてください。</p>
            </div>

            <!-- メイン表示のボディー部分(main_body)  -->
            <div id="main_body">
                <table>
                    <tr>
                        <td>メールアドレス：</td><td><%= email %></td>
                    </tr>
                    <tr>
                        <td>名前：</td><td><%= custName %></td>
                    </tr>
                    <tr>
                        <td>パスワード：</td><td>※セキュリティ保護のため表示していません。</td>
                    </tr>
                    <tr>
                        <td>電話番号：</td><td><%= tel %></td>
                    </tr>
                    <tr>
                        <td>生年月日：</td><td><%= birth %></td>
                    </tr>
                    <tr>
                        <td>性別：</td><td><%= sex %></td>
                    </tr>
                </table>
                <div id="main_subnmit">
                	<p><input type="submit" class="submit">確認完了</input></p>
                    <!-- <p><button type="button" value="確認完了" onclick="location.href=''" class="submit"></button></p> -->
                    <p><button type="button" value="修正" onclick="location.href='c_uw01_01.jsp'" class="submit"></button></p>
                </div>
            </div>
		</div>
	</div>
	<!-- フッタ -->
	<div id="frame_footer"><address>Copyright (c) HTMQ All Rights Reserved.</address></div>
</div>
</div>
</body>
</html>