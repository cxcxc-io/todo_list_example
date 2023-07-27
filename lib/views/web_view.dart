// WebView 類別是一個 StatefulWidget，用於呈現在網頁視圖上
// 構造函數

// 生成狀態對象的實例

// _WebViewState 是 WebView 對應的狀態類別
// 滾動控制器
// 用於跟蹤當前選擇的頁面的索引

// 構建 UI
// 側邊欄，用於切換頁面
// Todo List 選項
// 點擊後將所選索引設置為 0
// 任務統計 選項
// 點擊後將所選索引設置為 1
// 如果選中的是 TodoListScreen，則展示 TodoListScreen
// 如果選中的是 TodoStatisticsScreen，則展示 TodoStatisticsScreen
// 浮動操作按鈕，用於控制滾動位置
// 按下按鈕後，將滾動位置設置為頂部
// 使用向上箭頭的圖標
class WebView extends StatefulWidget {}

class _WebViewState extends State<WebView> {}
