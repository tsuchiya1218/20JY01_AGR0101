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

	<!-- 画面のヘッダー部分(frame_header) -->
	<div id="frame_header"><h1><a href="c_home.jsp">滝沢's Library</a></h1></div>
	
	<!-- 画面のボディ部分(frame_body) -->
	<div id="frame_body">
		<!-- サブメニュー（submenu） -->
		<div id="submenu">
			<div id="submenu_header"><p>Menu</p></div>
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
				<h2>会員登録完了</h2>
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
                <p>お客様の登録が完了しました。送信された会員登録メールをご確認ください。</p>
                <p>以下の「ホーム画面へ」ボタンよりホーム画面にお戻りいただき、再度ログインを行ってください。</p>
            </div>
            <hr>
            <!-- メインのボディー部分(main_body)  -->
            <div id="main_body">
                <div id="main_subnmit">
                    <p><input type="button" value="ホーム画面へ" onclick="location.href='c_home.jsp'" class="submit"></p>
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