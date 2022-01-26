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

	//↓------テスト用------↓
	String custNum = "00000001";
	String custName = "スナコリュウゲン";
	ArrayList<String> shopNameArray = new ArrayList<String>();
	shopNameArray.add("新宿店");
	shopNameArray.add("高円寺店");
	ArrayList<String> shopNumArray = new ArrayList<String>();
	shopNumArray.add("0001");
	shopNumArray.add("0003");
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
				<li><a href="c_uw09_01.jsp">定期券購入</a></li>
				<li><a href="xxx.html">定期券継続</a></li>
			</ul>
		</div>
        
		<!-- メイン表示（main） -->
		<div id="main">
			<!-- メイン表示のヘッダー部分(main_header) -->
			<div id="main_header">
				<h2>予約する店舗選択</h2>
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
                <p>予約する店舗を選択してください。</p>
                <p>店舗を検索するには、「都道府県を選択」より希望の店舗が存在する<br>都道府県を選択していただき、「検索」ボタンをクリックしてください。</p>
            </div>

            <!-- メイン表示のボディー部分(main_body)  -->
            <div id="main_body">
                <h3>店舗選択</h3>
                <div id="search">
                    <div id="search_01">
                        <form method="post" action=""></form>
                            <table>
                                <tr>
                                    <td>都道府県：</td>        
                                    <td>
                                        <select name="city">
                                            <option value="" selected>都道府県を選択</option>
                                            <option value="Hokkaido">北海道</option>
                                            <option value="Aomori">青森県</option>
                                            <option value="Akita">秋田県</option>
                                            <option value="Iwate">岩手県</option>
                                            <option value="Yamagata">山形県</option>
                                            <option value="Miyagi">宮城県</option>
                                            <option value="Fukushima">福島県</option>
                                            <option value="Ibaraki">茨城県</option>
                                            <option value="Tochigi">栃木県</option>
                                            <option value="Gunma">群馬県</option>
                                            <option value="Saitama">埼玉県</option>
                                            <option value="Kanagawa">神奈川県</option>
                                            <option value="Chiba">千葉県</option>
                                            <option value="Tokyo">東京都</option>
                                            <option value="Yamanashi">山梨県</option>
                                            <option value="Nagano">長野県</option>
                                            <option value="Niigata">新潟県</option>
                                            <option value="Toyama">富山県</option>
                                            <option value="Ishikawa">石川県</option>
                                            <option value="Fukui">福井県</option>
                                            <option value="Gifu">岐阜県</option>
                                            <option value="Shizuoka">静岡県</option>
                                            <option value="Aichi">愛知県</option>
                                            <option value="Mie">三重県</option>
                                            <option value="Shiga">滋賀県</option>
                                            <option value="Kyoto">京都府</option>
                                            <option value="Osaka">大阪府</option>
                                            <option value="Hyogo">兵庫県</option>
                                            <option value="Nara">奈良県</option>
                                            <option value="Wakayama">和歌山県</option>
                                            <option value="Tottori">鳥取県</option>
                                            <option value="Shimane">島根県</option>
                                            <option value="Okayama">岡山県</option>
                                            <option value="Hiroshima">広島県</option>
                                            <option value="Yamaguchi">山口県</option>
                                            <option value="Tokushima">徳島県</option>
                                            <option value="Kagawa">香川県</option>
                                            <option value="Ehime">愛媛県</option>
                                            <option value="Kochi">高知県</option>
                                            <option value="Fukuoka">福岡県</option>
                                            <option value="Saga">佐賀県</option>
                                            <option value="Nagasaki">長崎県</option>
                                            <option value="Kumamoto">熊本県</option>
                                            <option value="Oita">大分県</option>
                                            <option value="Miyazaki">宮崎県</option>
                                            <option value="Kagoshima">鹿児島県</option>
                                            <option value="Okinawa">沖縄県</option>
                                            </select>
                                    </td>
                                    <td><input type="submit" value="検索"></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    
                    <%
                    if(shopNameArray != null){%>
                    	<%="<!-- 店舗選択フォーム部分 -->" %>
                    	<%="<div id='search_02'>" %>
                    	<%="<h3>検索結果</h3>" %>
                    	<%="<table>" %>
                    	<%
                    	for(int i = 0;i < shopNameArray.size();i++){
                    		out.print("<tr><td><a href='xxx.java?index='" + i + "'>" + shopNameArray.get(i) + "</a></td></tr>");
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