/// 主要讓用戶操作新增、刪除與完成待辦事項的動作。
///
/// 通過 [TextEditController] 來獲取使用者輸入，當使用者輸入並提交後，創建一個新的待辦事項，並清空文字框。使用 [FutureBuilder] 來監聽待辦事項清單的變化。
///
/// 狀態顯示：
/// * 如果還在等待資料，則顯示載入指示器。
/// * 如果出錯，則顯示錯誤訊息。
/// * 如果有資料，則顯示待辦事項清單。
///
/// UserStory：
/// * 當用戶在此頁面上方的輸入框輸入待辦事項後並 Enter。
///   * 下方的列表將會新增待辦事項組件 [TodoComponent]。
///   * 將資料記緩存。
///     * 當用戶點擊該 [TodoComponent] 的核選框，該核選框被勾起。
///       * 系統同時記錄完成，彙整到數量統計 [TodoStatisticsScreen]。
///       * 將資料記緩存。
///       * 同步至統計 [TodoStatisticsScreen]。
///     * 若核選框取消勾起，則取消完成，同時同步到數量統計 [TodoStatisticsScreen]。
///       * 將資料記緩存。
///       * 同步至統計 Screen。
///     * 當用戶點此 [TodoComponent] 的垃圾桶，該 待辦事項被移除，並同時同步到統計 [TodoStatisticsScreen]。
///       * 將資料記緩存。
///       * 同步至統計 [TodoStatisticsScreen]。
/// * 當用戶點選左邊的導航列的按鈕導向其他 [Screen]，右邊的主 [Screen] 將會切換。
///   * 點選新增待辦事項 Screen。
///     * 右主 [Screen] 畫面不變。
///   * 用戶點選 完成任務及數量統計。
///     * 右主 [Screen] 進到完成任務及數量統計 [TodoStatisticsScreen]。
class TodoListScreen extends StatefulWidget {}

class _TodoListScreenState extends State<TodoListScreen> {}
