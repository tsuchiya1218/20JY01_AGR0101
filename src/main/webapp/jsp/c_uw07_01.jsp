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
	// 会員コードをsessionより取得する
	//String custNum = (String)session.getAttribute("custNum");
	// 会員名をsessionより取得する
	//String custName = (String)session.getAttribute("custName");
	// 予約履歴の情報が入った二次元配列をsessionより取得する
	//String[][] data_uw07 = (String)session.getAttribute("data_uw07");
	// 予約履歴表示用の変数
	String[] data_sub = {"予約番号" , "店舗名" , "来店日" , "来店時間" , "退店時間" , "ルームの種類" , "選択座席番号" , "利用人数" , "予約状況" , "キャンセル"};
	
	//↓テスト用↓
	String custNum = "00000001";
	String custName = "スナコリュウゲン";
	String[][] data_uw07 = new String[][]{
		{"211121007" , "西新宿店" , "2021-01-01" , "10:00" , "13:00" , "Studyルーム" , "26" , "1" , "未来店" },
		{"211112007" , "西新宿店" , "2022-01-19" , "10:00" , "14:00" , "Studyルーム" , "1,2,5" , "3" , "来店済み" },
		{"211110004" , "西新宿店" , "2022-02-01" , "10:00" , "15:00" , "Studuルーム" , "14" , "1" , "キャンセル"}
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
				<li><a href="xxx.html">定期券継続</a></li>
			</ul>
		</div>
        
		<!-- メイン表示（main） -->
		<div id="main">
			<!-- メイン表示のヘッダー部分(main_header) -->
			<div id="main_header">
				<h2>予約履歴</h2>
				<!-- メイン表示のユーザー表示部分(main_userwindow) -->
				<table class="main_userwindow">
					<tr>
                        <td class='rt'>会員コード：<%= custNum %></td>
						<td class='rt'><%= custName %></td>
						<td class="rt"><button type="button"onclick="location.href=''">ログアウト</button></td>
					</tr>
				</table>
			</div>

			<!-- メイン表示の説明文部分(main_overview) -->
            <div id="main_overview">
            	<p>こちらの画面では、お客様の予約履歴の確認と予約のキャンセルが行えます。</p>
            	<p>また、キャンセルできる予約は、対象予約の<span class="alert">「来店日」が現在からの"翌日以前の予約"</span>のみです。</p>
            </div>
            <!-- メインのボディー部分(main_body)  -->
            <div id="main_body">
            	<%
            	//条件：予約履歴が存在するかどうか
            	if(data_uw07 != null){
            		// 真なら、予約履歴が存在するので、予約履歴表示コードを表示する
            		for(int i = 0; i<data_uw07.length; i++){
            			out.print("<table class='rsvHistory_01'>");
            	        for(int j = 0; j<data_uw07[0].length; j++){
            	        	out.print("<tr><th>" + data_sub[j] + "：</th>");
            	        	out.println("<td>" + data_uw07[i][j] + "</td></tr>");
            	        }
            	        // ↓予約キャンセル可否判断の処理
           	            Calendar getToday = Calendar.getInstance();
			       		getToday.setTime(new Date());
			       		
			       		// String型checkDateで「来店日」を取得する
			       		String checkDate = data_uw07[i][2];
			       		// String型checkDateをDate型のdateに置き換える
			       		Date checkDate_date = new SimpleDateFormat("yyyy-MM-dd").parse(checkDate);
			       		Calendar nowDate = Calendar.getInstance();
			       		nowDate.setTime(checkDate_date); //特定の日
			       		
			       		long diffSec = (nowDate.getTimeInMillis() - getToday.getTimeInMillis()) / 1000;
			       		long diffDays = diffSec / (246060)+1;
			       		
			       		out.print("<th>キャンセル</th>");
			       		if(diffDays > 1){
			       			out.print("<td><a href='c_uw08?rsvNum=' " + data_uw07[i][0] +  "'>キャンセルする</a></td>");
			       		}else{
			       			out.print("<td>キャンセル不可</td>");
			       		}
			       		out.print("</table>");   
            	    }
            	}else{
            		// 偽なら、予約履歴が存在しないので、「予約履歴がありません」のエラー表示をする%>
            		<%= "<h3>※予約履歴がありません。</h3>"%>
            		<%= "<p>下の「ホーム画面へ」ボタンより、ホームにお戻りいただき、<br>「予約する」から予約を行ってください。</p>" %>
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