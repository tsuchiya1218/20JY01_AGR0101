<%@page import="model.Shop"%>
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
	// 店舗名が格納されている配列
	//ArrayList<String> shopNameArray = (ArrayList)session.getAttribute("shopNameArray");
	String cityName = (String)session.getAttribute("cityName");

	//↓------テスト用------↓
	String custNum = "00000001";
	String custName = "スナコリュウゲン";
	ArrayList<String> shopNameArray = new ArrayList<String>();
	shopNameArray.add("新宿店");
	shopNameArray.add("高円寺店");
	ArrayList<String> shopNumArray = new ArrayList<String>();
	shopNumArray.add("0001");
	shopNumArray.add("0003");
	// 店舗が東京にしかない場合
	String[][] tableData  = new String[][]{
		{"202020" , "西新宿店" , "01" , "東京都"},// [0]"店舗コード" , [1]"店舗名" , [2]"都道府県番号" , [3]"都道府県名"
		{"202021" , "東新宿店" , "01" , "東京都"},
		{"202022" , "南新宿店" , "01" , "東京都"} 
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
				<li><a href="c_uw09_01.jsp">定期券購入</a></li>
				<li><a href="xxx.html">定期券継続</a></li>
			</ul>
		</div>
        
		<!-- メイン表示（main） -->
		<div id="main">
			<!-- メイン表示のヘッダー部分(main_header) -->
			<div id="main_header">
				<h2>定期券購入店舗選択</h2>
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
                <p>定期券を購入する店舗を選択してください。</p>
                <p>店舗を検索するには、「都道府県を選択」より希望の店舗が存在する<br>都道府県を選択していただき、「検索」ボタンをクリックしてください。</p>
            </div>

            <!-- メイン表示のボディー部分(main_body)  -->
            <div id="main_body">
                <h3>店舗選択</h3>
                <div id="search">
                    <div id="search_01">
	                    <table>
	                        <tr>
	                            <td>都道府県：</td>        
	                            <td>
	                                <select name="cityName">
	                                	<option value="" selected>都道府県を選択</option>
	                                	<%
	                                	
	                                	for(int i = 0;i<tableData.length;i++ ){
	                                		out.print("<option value=" + tableData[i][3] + ">" + tableData[i][3] + "</option>");
	                                	}
	                                	%>
	                                    </select>
	                            </td>
	                            <td><input type="submit" value="検索" onclick='method_search02('tableData');'></td>
	                        </tr>
	                    </table>
                    </div>
                    <div id="search_02"></div>
                    
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
<script src = "../js/c_uw09_01.js" cherset = "UTF-8"></script>
</body>
</html>