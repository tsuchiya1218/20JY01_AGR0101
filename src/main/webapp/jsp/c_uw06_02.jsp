<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="Shift_JIS"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="../css/sample.css" />
<link rel="stylesheet" type="text/css" href="../css/searchframe.css" />

<title>滝沢's Library</title>
</head>
<body>
<!-- 画面全体 -->
<div id="frame">
	<%
	// 会員コードをsessionより取得する
	//String custNum = (String)session.getAttribute("custNum");
	// 会員名をsessionより取得する
	//String custName = (String)session.getAttribute("custName");
	// 利用できるルームについての情報をsessionより取得する
	//　※↑をどのように実装するのか分からないので、一旦ArrayListでNameだけ入れる形にしている
	//ArrayList<String> roomNameArray = (ArrayList)session.getAttribute("roomNameArray");
	
	//↓------テスト用------↓
	String custNum = "00000001";
	String custName = "スナコリュウゲン";
	ArrayList<String> roomNameArray = new ArrayList<String>();
	roomNameArray.add("カフェ&Studyルーム");
	roomNameArray.add("Studyルーム");
	roomNameArray.add("パソコンルーム");
	//↑------テスト用------↑
	%>
	
	
	<!-- 画面のヘッダー部分(frame_header) -->
	<div id="frame_header"><h1><a href="c_home.jsp">滝沢's Library</a></h1></div>
	
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
						<li><a href="xxx.html">予約履歴</a></li>
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
			<!-- メイン表示のヘッダー部分(main_header) -->
			<div id="main_header">
				<h2>予約内容入力</h2>
				<!-- メイン表示のユーザー表示部分(main_userwindow) -->
				<table class="main_userwindow">
					<tr>
                        <td class='rt'>会員コード：<%= custNum %></td>
						<td class='rt'><%= custName %><td>
						<td class="rt"><button type="button"onclick="location.href=''">ログアウト</button><td>
					</tr>
				</table>
			</div>

            <!-- メイン表示の説明文部分(main_overview) -->
            <div id="main_overview">
                <p>以下の予約内容を入力してください。</p>
                <p>予約についての内容に応じて利用できるルームが表示されますので、<br>ご希望のルームをクリックしてください。</p>
            </div>

            <!-- メイン表示のボディー部分(main_body)  -->
            <div id="main_body">

                <!-- 予約内容入力フォーム部分 -->
                <div id="search">
                    <div id="search_01">
                        <form method="post" action="">
                        	<h3>予約内容</h3>
                            <table>
                                <tr>
                                    <td class="search">
                                        来店日<lavel><input type="date" name="checkDate"></label>
                                    </td>
                                    <td class="search">
                                        来店時間
                                        <input type="time" name="checkIn" list="checkIn">
                                        <datalist id="checkIn">
                                        <option value="10:00"></option>
                                        <option value="11:00"></option>
                                        <option value="12:00"></option>
                                        <option value="13:00"></option>
                                        <option value="14:00"></option>
                                        <option value="15:00"></option>
                                        <option value="16:00"></option>
                                        <option value="17:00"></option>
                                        <option value="18:00"></option>
                                        <option value="19:00"></option>
                                        <option value="20:00"></option>
                                        <option value="21:00"></option>
                                        <option value="22:00"></option>
                                        </datalist>
                                    </td>
                                    <td class="search">
                                        退店時間
                                        <input type="time" name="checkOut" list="checkOut">
                                        <datalist id="checkOut">
                                        <option value="10:00"></option>
                                        <option value="11:00"></option>
                                        <option value="12:00"></option>
                                        <option value="13:00"></option>
                                        <option value="14:00"></option>
                                        <option value="15:00"></option>
                                        <option value="16:00"></option>
                                        <option value="17:00"></option>
                                        <option value="18:00"></option>
                                        <option value="19:00"></option>
                                        <option value="20:00"></option>
                                        <option value="21:00"></option>
                                        <option value="22:00"></option>
                                        </datalist>
                                    </td>
                                    <td>
                                        <div id="main_subnmit">
                                            <p><input type="submit" value="検索" class="submit"></p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
					<%
                    if(roomNameArray != null){%>
                    	<%="<!-- ルーム選択フォーム部分 -->" %>
                    	<%="<div id='search_02'>" %>
                    	<%="<h3>利用可能なルームの種類の名前</h3>" %>
                    	<%="<table>" %>
                    	<%
                    	for(int i = 0;i < roomNameArray.size();i++){
                    		out.print("<tr><td><a href='xxx.java?index='" + i + "'>" + roomNameArray.get(i) + "</a></td></tr>");
                    	}
        				%>
                    	<%="</table>" %>
                    	<%="</div>" %>
                    <%}%>                
                </div>
            </div>

		</div>
	</div>
	<!-- フッタ -->
	<div id="frame_footer"><address>Copyright (c) HTMQ All Rights Reserved.</address></div>
</div>
</div>
<script src = "../js/default.js" cherset = "UTF-8"></script>
<script src = "../js/c_uw06_01.js" cherset = "UTF-8"></script>
</body>
</html>