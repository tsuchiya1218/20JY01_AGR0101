<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	// 会員名をsessionより取得する
	//String custName = (String)session.getAttribute("custName");
	// 予約履歴の情報が入った二次元配列をsessionより取得する
	//String[][] tableData = (String)session.getAttribute("tableData");
	// 定期券表示用変数
	String[] tableData_sub= {"定期券コード" , "利用店舗名" , "会員名" , "利用しているルームの種類" , "選択座席番号", "開始日" , "利用期間" , "支払い状況" };
	int[] tableData_index = {0 ,1 , 3 , 4 , 6 };
	
	//↓テスト用↓
	String custName = "スナコリュウゲン";
	String[][] tableData = new String[][]{
		{"112345" , "西新宿店" , "スナコリュウゲン" , "1" , "40" , "2021-12-11" , "1" , "支払済み"},
		{"112995" , "西新宿店" , "スナコリュウゲン" , "2" , "20" , "2022-12-12" , "1" , "支払済み"}
	};
	
	
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
						<li><a href="c_uw07">予約履歴</a></li>
						<li><a href="xxx.html">私の定期券</a></li>
					</ul>
				</li>
				<li><a href="c_uw06_01.jsp">予約する</a></li>
				<li><a href="xxx.html">定期券購入</a></li>
				<li><a href="c_uw10">定期券継続</a></li>
			</ul>
		</div>
        
		<!-- メイン表示（main） -->
		<div id="main">
			<!-- メイン表示のヘッダー部分(main_header) -->
			<div id="main_header">
				<h2>継続する定期券を選ぶ</h2>
				<!-- メイン表示のユーザー表示部分(main_userwindow) -->
				<table class="main_userwindow">
					<tr>
						<td class='rt'><%= custName %></td>
						<td class="rt"><button type="button"onclick="location.href=''">ログアウト</button></td>
					</tr>
				</table>
			</div>

			<!-- メイン表示の説明文部分(main_overview) -->
            <div id="main_overview">
            	<p>画面上に表示される定期券の内、<br>継続したい定期券の「定期券コード」のリンクをクリックしてください。</p>
            </div>
            <!-- メインのボディー部分(main_body)  -->
            <div id="main_body">
            	<%
            	//条件：定期券情報が存在するかどうか
            	if(tableData != null){
            		// 真なら、定期券情報が存在するので、定期券表示コードを表示する
            		for(int i=0 ; i<tableData.length ; i++){
            			out.print("<table class='rsvHistory_01'>");
            			for(int index : tableData_index){
            				// 条件：定期券コードの表示の番であるかどうか
            				if(index == 0){
            					// 真なら、「定期券コード」に定期券継続サーブレット(c_uw10_02.servlet)に遷移させるためのリンクを付与するコードを書く
            					out.print("<tr>");
                				out.print("<td><a href='c_uw10_02'>" + tableData_sub[index] + "</a>：</td>");
                				out.print("<td>" + tableData[i][index] + "</td>");
                				out.print("</tr>");
            				}else{
            					out.print("<tr>");
                				out.print("<td>" + tableData_sub[index] + "：</td>");
                				out.print("<td>" + tableData[i][index] + "</td>");
                				out.print("</tr>");
            				}
            			}
            			out.print("</table>"); 
            	    }
            	}else{
            		// 偽なら、定期券が存在しないので、「継続可能な定期券がありません」のエラー表示をする%>
            		<%= "<h3>※継続可能な定期券がありません。</h3>"%>
            		<%= "<p>下の「ホーム画面へ」ボタンより、ホームにお戻りいただき、<br>「定期券を購入する」から定期券を購入してください。</p>" %>
            		<%= "<hr>" %>
            		<%= "<div id='main_subnmit'>" %>
            		<%= "<p><input type='button' value='ホーム画面へ' onclick='location.href='c_home.jsp'' class='submit'></p>" %>
                    <%= "</div>" %>
            	<%}%>
            </div>
		</div>
	</div>
	<!-- フッタ -->
	<div id="frame_footer"><address>Copyright (c) HTMQ All Rights Reserved.</address></div>
</div>
</div>
<script src = "../js/default.js" charset = "UTF-8"></script>
<script src = "../js/c_uw06_01.js" charset = "UTF-8"></script>
</body>
</html>