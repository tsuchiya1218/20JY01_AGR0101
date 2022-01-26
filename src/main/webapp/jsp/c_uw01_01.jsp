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
<!--画面全体(frame)-->
<div id="frame">

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
				<h2>会員登録</h2>
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
                <p>会員登録を行います。</p>
                <p>登録を行うため、以下の会員情報の登録を行ってください。</p>
            </div>
            
            <!-- メイン表示のボディー部分(main_body)  -->
            <div id="main_body">
            	
                <form method="post" action="c_uw01_01">
                    <table>
                        <tr>
                            <td>メールアドレス：</td><td><input type="email" name="email" required placeholder="sample@test.com"></td>
                        </tr>
                        <tr>
                            <td>名前：</td><td><input type="text" name="custName" required placeholder="タナカタロウ"></td>
                        </tr>
                        <tr>
                            <td>パスワード：</td><td><input type="password" name="pass" required placeholder="*8桁以上12桁以下の英数字を入力してください" class="pass" minlength="8" maxlength="12"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                            <%
                            // errmsg_01 パスワードと(再)パスワードが一致しないことを伝えるメッセージ
                            String errmsg_01 = (String)session.getAttribute("error_01");

                            // errmsg_01が入っている場合、表示する
                            if(errmsg_01 != null){
                            	out.print("※" + errmsg_01);
                            }
                            %>
                            </td>
                        </tr>
                        <tr>
                            <td>(再)パスワード：</td><td><input type="password" name="pass_2" required placeholder="*8桁以上12桁以下の英数字を入力してください" class="pass" minlength="8" maxlength="12"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                            <%
                            // errmsg_01が入っている場合、表示する
                            if(errmsg_01 != null){
                            	out.print("※" + errmsg_01);
                            	session.setAttribute("errmsg_01", null);
                            }
                            %>
                            </td>
                        </tr>
                        <tr>
                            <td>電話番号：</td><td><input type="tel" name="tel" required placeholder="*ハイフンなし"></td>
                        </tr>
                        <tr>
                            <td>生年月日：</td>
                            <td>
                                <lavel>
                                    <input type="date" name="birth">
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>性別：</td>
                            <td>
                                <input type="radio" name="sex" value="1" >男
                                <input type="radio" name="sex" value="-1">女
                            </td>
                        </tr>
                    </table>
                    <div id="main_subnmit">
                        <p><input type="submit" value="確定" class="submit"></p>
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