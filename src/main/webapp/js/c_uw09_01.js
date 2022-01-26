function method_search02(tableData){
    // select要素を取得
	var data = document.querySelector("select[name=cityName]");

    // 店舗選択フォームを取得
    const search_02 = document.getElementById("search_02");
    
    search_02.innerHTML = "<h3>検索結果</h3>";
    search_02.innerHTML = "<table>";
    // dataの都道府県番号と一致する、tableData内のレコードの店舗名を表示する
    for(let i=0 ; i<tableData.length ; i++){
        // 条件：選択された都道府県名とtableDataのコードの都道府県名と一致するかどうか
        if(tableData[i][3].equals(data)){
            // 真なら、都道府県名が一致するので、検索結果として表示する
            search_02.innerHTML = "<tr><td><a href='c_uw09_01'>" + tableData[i][3] + "</a></td></tr>";
        }else{
            // 偽なら、一致する都道府県名のtableDataのレコードがないので、「検索結果なし」とする。
        }
    }
    search_02.innerHTML = "</table>";
}