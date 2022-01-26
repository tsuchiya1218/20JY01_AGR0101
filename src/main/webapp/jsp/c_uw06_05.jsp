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
	// 店舗名をsessionより取得する 
	//String shopName = (String)session.getAttrinbute("shopName");
	// 来店日をsessionより取得する
	//String checkDate = (String)session.getAttribute("checkDate");
	// 来店時間をsessionより取得する
	//String checkIn = (String)session.getAttribute("checkIn");
	// 退店時間をsessionより取得する
	//String checkOut = (String)session.getAttribute("checkOut");
	// ルーム名をsessionより取得する
	//String roomName = (String)session.getAttribute("roomName");
	// 選択座席番号をsessionより取得する
	//String seatNum = (String)session.getAttribute("seatNum");
	
	//↓テスト用↓
	String custNum = "00000001";
	String custName = "スナコリュウゲン";
	String shopName = "新宿店";
	String checkDate = "2022/01/01";
	String checkIn = "10:00";
	String checkOut = "12:00";
	String roomName = "カフェ&Studyルーム";
	int[] seatNumArray = {1,2};
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
				<h2>予約完了</h2>
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
            	<p>お客様の希望された予約の登録が完了しました。<br>送信された予約完了メールをご確認ください。</p>
            	<p>当日のご利用を心よりお待ちしております。</p>
                <p>また、以下の「ホーム画面へ」ボタンよりホーム画面にお戻りいただけます。</p>
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
<script src = "../js/default.js" cherset = "UTF-8"></script>
<script src = "../js/c_uw06_01.js" cherset = "UTF-8"></script>
</body>
</html>