/// 用於呈現在網頁視圖上。
///
/// [WebView] 類別是一個 [StatefulWidget]，用於呈現在網頁視圖上，生成狀態對象的實例。
///
/// [_WebViewState] 是 [WebView] 對應的狀態類別。
///
/// 其 UI 有：
/// * 左側側邊欄，用於切換頁面，寬約200。
/// * 右側主 Screen，包含：[TodoListScreen] 與 [TodoStatisticsScreen]。
///   * 右下方有 浮動操作按鈕(使用向上箭頭的圖標)。
///
/// 具備的功能：
/// * 浮動操作按鈕，按下按鈕後，將滾動位置設置為頂部。
class WebView extends StatefulWidget {}

class _WebViewState extends State<WebView> {}
