// MobileView 類別是一個 StatefulWidget，用來表示在移動設備上的視圖
// 構造函數
// 產生狀態類別的實例

// _MobileViewState 是 MobileView 對應的狀態類別
// 用於跟蹤當前選擇的頁面
// 滾動控制器

// 這個函數在點擊底部的導航條時觸發，將所選頁面的索引設置為當前索引

// 用於存放不同頁面的 Widget
// 初始化頁面選項，包括 TodoListScreen 和 TodoStatisticsScreen

// 構建 UI
// AppBar 顯示在應用程式的頂部
// 根據所選頁面的索引顯示對應的頁面
// 抽屜式側邊欄
// 當所選頁面為第二頁時，不顯示浮動操作按鈕
class MobileView extends StatefulWidget {}

class _MobileViewState extends State<MobileView> {}
