/// 用來表示在 Android 上的視圖
///
/// [MobileView] 類別是一個 [StatefulWidget]，用來表示在移動設備上的視圖，產生狀態類別的實例。
///
/// [_MobileViewState] 是 [MobileView] 對應的狀態類別。
///
/// 其 UI 有：
/// * 左上方有抽屜式側邊欄。
/// * 主要頁面包含：[TodoListScreen] 與 [TodoStatisticsScreen]。
///   * 右下角有浮動操作按鈕(使用向上箭頭的圖標)。
///
/// 具備的功能：
/// * 浮動操作按鈕，按下按鈕後，將滾動位置設置為頂部。當所選頁面為 [TodoStatisticsScreen] 時，不顯示浮動操作按鈕。
class MobileView extends StatefulWidget {}

class _MobileViewState extends State<MobileView> {}
