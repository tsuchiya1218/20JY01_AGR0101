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
	// 会員名をsessionより取得
	//String custName = (String)session.getAttribute("custName");
	
	//↓テスト用↓
	String custName = null;
	%>

	<!-- 画面のヘッダー部分(frame_header) -->
	<div id="frame_header">
		<h1><a href='c_home.jsp'>滝沢's Library</a></h1>
	</div>
	
	<!-- 画面のボディ部分(frame_body) -->
	<div id="frame_body">
		<!-- サブメニュー（submenu） -->
		<div id="submenu">
			<div id="submenu_header"><p>Menu</p></div>
			<ul id="submenu_body">
			
				<%
				if(custName != null){%>
					<%="<li>"%>
						<%="<a href='javascript:void(0);' onclick='method_MyPage();'>MyPage</a>" %>
						<%="<ul id='MyPage'>" %>
							<%="<li><a href='c_uw03'>会員情報</a></li>" %>
							<%="<li><a href='c_uw07'>予約履歴</a></li>" %>
							<%="<li><a href='xxx.jsp'>私の定期券</a></li>" %>
						<%="</ul>" %>
					<%="</li>" %>
					<%="<li><a href='c_uw06_01.jsp'>予約する</a></li>" %>
					<%="<li><a href='xxx.jsp'>定期券購入</a></li>" %>
					<%="<li><a href='xxx.jsp'>定期券継続</a></li>" %>
				<%}else{ %>
					<%="<li><a href='c_uw02_01.jsp'>予約する</a></li>" %>
					<%="<li><a href='c_uw02_01.jsp'>定期券購入</a></li>" %>
					<%="<li><a href='c_uw02_01.jsp'>定期券継続</a></li>" %>
				<%} %>
					
			</ul>
		</div>

		<!-- メイン表示（main） -->
		<div id="main">
			<!-- メイン表示のヘッダー部分(main_header) -->
			<div id="main_header">
				<h2>ホーム</h2>
				<!-- メイン表示のユーザー表示部分(main_userwindow) -->
				<table class="main_userwindow">
					<tr>
						<%
						if(custName != null){%>
							<%="<td class='rt'>" + custName +  "<td>" %>
							<%="<td class='rt'><button type='button'onclick='location.href='''>ログアウト</button><td>" %>
						<%}else{ %>
							<%="<td class='rt'><button type='button'onclick='location.href='c_uw02_01.jsp''>ログイン</button><td>" %>
							<%="<td class='rt'><button type='button'onclick='location.href='c_uw01_01.jsp''>会員登録</button><td>" %>
						<%} %>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- フッタ -->
	<div id="frame_footer"><address>Copyright (c) HTMQ All Rights Reserved.</address></div>
</div>
<!-- MyPage表示用にjavascriptファイル読み込みをする -->
<script src = "../js/default.js" cherset = "UTF-8"></script>
</body>
</html>