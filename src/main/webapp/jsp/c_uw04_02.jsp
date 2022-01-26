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
				<h2>修正内容確認</h2>

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
                <p>お客様が入力された修正内容の確認を行います。</p>
                <p>以下の内容で登録を行ってよろしいでしょうか。</p>
                <p>再び入力される場合は、「修正」ボタンをクリックしてください。</p>
            </div>

             <!-- メイン表示のボディー部分(main_body)  -->
            <div id="main_body">
                <form method="post" action="">
                	<table>
                	<%
                	for(int i=0 ; i<tableData.length ; i++){
                		out.print("<tr>");
                		
                		// 条件：パスワード表示の番であるかどうか
                		if(i==2){
                			// 真ならパスワード表示なので、パスワードコードだけ、"セキュリティ保護のため表示していません。"というメッセージで置換する
                    		out.print("<td>" + tableData_sub[i] + "：</td><td>※セキュリティ保護のため表示していません。");
                		// 条件：性別表示の番であるかどうか
                		}else if(i==5){
                			// 真なら性別表示なので、String型1or-1の性別を、男か女かを表示できるようなコードを書く
                			tableData[i] = tableData[i].equals("1") ? "男" : "女";
                			out.print("<td>" + tableData_sub[i] + "：</td>");
                    		out.print("<td>" + tableData[i] + "</td>");
                		}else{
                    		out.print("<td>" + tableData_sub[i] + "：</td>");
                    		out.print("<td>" + tableData[i] + "</td>");
                		}
                		out.print("</tr>");
                	}
                	%>
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
</body>
</html>