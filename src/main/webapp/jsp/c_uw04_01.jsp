<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="model.Customer" %>

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
	//String custName = (String)session.getAttribute("custName");
	// 会員情報が格納されたString配列をsessionより取得する
	//String[] tableData = (String)session.getAttribute("tableData"); 
	// 会員情報表示for文のための配列を作成する
	String[] tableData_sub = {"メールアドレス" , "名前" , "パスワード" , "電話番号" , "生年月日" , "性別"};
	
	//↓テスト用↓
	String custName = "スナコリュウゲン";
	String[] tableData = new String[6];
	tableData[0] = "20jy0127@jec.ac.jp";
	tableData[1] = "スナコリュウゲン";
	tableData[2] = "pass0127";
	tableData[3] = "08000000127";
	tableData[4] = "2001/01/01";
	tableData[5] = "1";
	%>
	
	<!-- 画面のヘッダー部分(frame_header) -->
	<div id="frame_header"><h1><a href="c_home.html">滝沢's Library</a></h1></div>
	
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
						<li><a href="c_uw07_01.jsp">予約履歴</a></li>
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
				<h2>会員情報確認</h2>

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
                <p>お客様の会員情報の修正・変更を行います。以下の内容に入力することで会員情報の修正を行ってください。</p>
                <p>※修正可能な情報は、パスワード、電話番号、生年月日、性別の四つです。</p>
            </div>

             <!-- メインのボディー部分(main_body)  -->
            <div id="main_body">
                <form method="post" action="">
                    <table>
                        <tr>
                            <td>メールアドレス：</td><td><%= tableData[0] %></td>
                        </tr>
                        <tr>
                            <td>名前：</td><td><%= tableData[1] %></td>
                        </tr>
                        <tr>
                            <td>パスワード：</td><td><input type="password" name="pass" placeholder="*8桁以上12桁以下の英数字を入力してください" class="pass" minlength="8" maxlength="12"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                            <%
                            // error_01 パスワードと(再)パスワードが一致しないことを伝えるメッセージ
                            String error_01 = (String)session.getAttribute("error_01");

                            // error_01が入っている場合、表示する
                            if(error_01 != null){
                            	out.print("※" + error_01);
                            }
                            %>
                            </td>
                        </tr>
                        <tr>
                            <td>(再)パスワード：</td><td><input type="password" name="confirm" placeholder="*8桁以上12桁以下の英数字を入力してください" class="pass" minlength="8" maxlength="12" oninput="CheckPassword(this)"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                            <%
                            // error_01が入っている場合、表示する
                            if(error_01 != null){
                            	out.print("※" + error_01);
                            	session.setAttribute("error_01", null);
                            }
                            %>
                            </td>
                        </tr>
                        <tr>
                            <td>電話番号：</td><td><input type="tel" name="tel" value="<%= tableData[3] %>"></td>
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
                        <p><input type="submit" value="確認完了" class="submit"></p>
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
<script src = "../js/passCheck.js" cherset = "UTF-8"></script>
</body>
</html>