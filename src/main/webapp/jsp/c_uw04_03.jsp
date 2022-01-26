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
<!-- 画面全体 -->
<div id="frame">
	
	<%
	// 会員名をsessionより取得する
	String custName = (String)session.getAttribute("custName");
	%>
	
	<!-- 画面のヘッダー部分(frame_header) -->
	<div id="frame_header"><h1><a href="c_home.jap">滝沢's Library</a></h1></div>
	
	<!-- 画面のボディ部分(frame_body) -->
	<div id="frame_body">
		<!-- サブメニュー（submenu） -->
		<div id="submenu">
			<div id="submenu_header"><p>Menu</p></div>
			<ul id="submenu_body">
                <li>
					<a href="javascript:void(0);" onclick="method_MyPage();">MyPage</a>
					<ul id="MyPage">
						<li><a href="c_uw03_01.jsp">会員情報</a></li>
						<li><a href="c_uw07_01">予約履歴</a></li>
						<li><a href="xxx.html">私の定期券</a></li>
					</ul>
				</li>
				<li><a href="c_uw06_01.jsp">予約する</a></li>
				<li><a href="xxx.html">定期券購入</a></li>
				<li><a href="xxx.html">定期券継続</a></li>
			</ul>
		</div>

		<!-- メイン表示（main） -->
		<div id="main">

			<!-- メイン表示のヘッダー部分 (main_header) -->
			<div id="main_header">
				<h2>現在パスワードの入力</h2>
                <!-- メイン表示のユーザー表示部分(main_userwindow) -->
				<table class="main_userwindow">
					<tr>
						<td class='rt'><%= custName %><td>
						<td class="rt"><button type="button"onclick="location.href=''">ログアウト</button><td>
					</tr>
				</table>
			</div>
			<!-- メイン表示の説明文部分(main_overview) -->
            <div id="main_overview">
                <p>お客様の会員情報の修正を行うため、現在使われているパスワードを入力してください。</p>
            </div>

             <!-- メイン表示のボディー部分(main_body)  -->
            <div id="main_body">
                <form method="post" action="">
                    <table>
                        <tr>
                            <td>パスワード：</td><td><input type="password" name="pass" required class="pass" minlength="8" maxlength="12"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                            <%
                            // error_04 内容：パスワードが間違っている
                            String error_04 = (String)session.getAttribute("error_04");

                            // エラーメッセージが入っている場合表示し、その後削除する。
                            if(error_04 != null){
                            	out.print("※" + error_04);
                            	session.setAttribute("error_04" , null);
                            }
                            %>
                            </td>
                        </tr>
                    </table>
                    <div id="main_subnmit">
                        <p><input type="submit" value="完了" class="submit"></p>
                    </div>
                </form>
            </div>
        </div>
	</div>
	<!-- フッタ -->
	<div id="frame_footer"><address>Copyright (c) HTMQ All Rights Reserved.</address></div>
</div>
</div>
<!-- MyPage表示用にjavascriptファイル読み込みをする -->
<script src = "../js/default.js" cherset = "UTF-8"></script>
</body>
</html>