import 'package:flutter/material.dart'; 
// 匯入 Flutter 的 Material UI 套件（按鈕、頁面、AppBar 都在這裡）

void main() {
  runApp(MyApp()); 
  // 程式入口：啟動 App，並把 MyApp 當作整個應用程式
}

// 主應用程式（最外層）
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), 
      // 設定首頁是 HomePage（很重要！不要直接寫 Scaffold）
    );
  }
}

// ===== 首頁 =====
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold = 頁面骨架（可以放 AppBar、body 等）

      body: Column(
        // Column = 垂直排列元件（由上到下）
        children: [

          // ===== 資源按鈕區塊 =====
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            // 左右留100，上下留20空白

            child: InkWell(
              // InkWell = 可點擊元件（有點擊效果）

              onTap: () {
                // 點擊時執行
                Navigator.push(
                  context,
                  // 使用目前畫面的 context（很重要）

                  MaterialPageRoute(
                    builder: (context) => ResourcePage(),
                    // 跳到 ResourcePage（資源頁）
                  ),
                );
              },

              child: Container(
                // Container = 可以設定大小、顏色、邊框的盒子

                width: double.infinity,
                // 寬度填滿整個畫面

                height: 80,
                // 高度80

                alignment: Alignment.centerLeft,
                // 內容靠左 + 垂直置中

                padding: EdgeInsets.only(left: 20),
                // 文字往右推20（不要貼邊）

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  // 設定黑色邊框，粗3
                ),

                child: Text(
                  "資源",
                  // 顯示文字

                  style: TextStyle(fontSize: 20),
                  // 字體大小20
                ),
              ),
            ),
          ),

          // ===== 聯絡我們按鈕區塊 =====
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),

            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactPage(),
                    // 跳到聯絡我們頁
                  ),
                );
              },

              child: Container(
                width: double.infinity,
                height: 80,

                alignment: Alignment.centerRight,
                // 這次靠右

                padding: EdgeInsets.only(right: 20),
                // 往左推20

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),

                child: Text(
                  "聯絡我們",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

// ===== 資源頁 =====
class ResourcePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("資源頁"),
        // 上方標題列
      ),
      body: Center(
        // Center = 置中
        child: Text("這是資源頁"),
      ),
    );
  }
}

// ===== 聯絡我們頁 =====
class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("聯絡我們"),
      ),
      body: Center(
        child: Text("這是聯絡我們頁"),
      ),
    );
  }
}
