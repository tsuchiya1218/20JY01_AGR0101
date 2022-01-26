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
	<div id="frame_header"><h1><a href="c_home.html">滝沢's Library</a></h1></div>
	
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
				<h2>ログイン</h2>
				 <!-- メイン表示のユーザー表示部分(main_userwindow) -->
				<table class="main_userwindow">
					<tr>
						<td></td>
						<td class="rt"><button type="button"onclick="location.href='c_uw01_01.jsp'">会員登録</button><td>
					</tr>
				</table>
			</div>

			<!-- メイン表示の説明文部分(main_overview) -->
            <div id="main_overview">
                <p>ログインを行います。</p>
                <p>以下の内容を入力してください。</p>
                <p>※会員登録されていない場合は、右上の「会員登録」ボタンを押してください。</p>
            </div>
            
            <!-- メイン表示のボディー部分(main_body)  -->
            <div id="main_body">
                <form method="post" action="">
                    <table>
                        <tr>
                            <td>メールアドレス：</td><td><input type="email" name="email" required ></td>
                        </tr>
                        <tr>
                        	<td></td>
                        	<td>
                        	<%
                            // error_03 内容：入力した内容でエラーが発生した
                            String error_03 = (String)session.getAttribute("error_03");
                            
                            // エラーメッセージが入っている場合表示し、表示後削除する。
                            if(error_03 != null){
                            	out.print("※" + error_03);
                            	session.setAttribute("error_03", null);
                            }
                            %>
                        	</td>
                        </tr>
                        <tr>
                            <td>パスワード：</td><td><input type="password" name="pass" required class="pass" minlength="8" maxlength="12"></td>
                        </tr>
                    </table>
                    <div id="main_subnmit">
                        <p><input type="submit" value="ログイン" class="submit"></p>
                        <p><a href="c_uw05_01.jsp">パスワード再設定</a></p>
                    </div>
                </form>
            </div>
		</div>
	</div>
	<!-- フッタ -->
	<div id="frame_footer"><address>Copyright (c) HTMQ All Rights Reserved.</address></div>
</div>
</div>
</body>
</html>