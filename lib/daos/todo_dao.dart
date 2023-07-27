/// 將待辦事項 [Todo] 儲存在本地裝置的暫儲存中。
///
/// TodoDao 類別是一個狀態提供器，它會將待辦事項 [Todo] 透過 [SharedPreferences] 儲存在本地裝置的暫儲存中。
class TodoDao extends ChangeNotifier {
  /// 緩存物件，用他進行緩存邏輯。
  static SharedPreferences? _localCachePrefs;

  /// 設置緩存 Client 物件，用來操作緩存。
  static Future<void> _setLocalStoragePrefClient() async {}

  /// 獲取所有待辦事項，如果待辦事項清單為空，則顯示“尚無任務”的待辦事項。
  ///
  /// 從本地儲存中獲取所有待辦事項，如果待辦事項清單為空，則添加一條“尚無任務”的待辦事項。
  Future<List<Todo>> getTodos() async {}

  /// 新增一個待辦事項到清單中，並將其儲存到本地儲存中。
  ///
  /// 將待辦事項清單儲存到本地儲存中，並通知所有的觀察者進行狀態更新。
  void insertTodo(Todo todo) async {}

  /// 從待辦事項清單和本地儲存中刪除一個待辦事項。
  ///
  /// 從清單中刪除一個待辦事項，並更新本地儲存中的待辦事項清單，通知所有的觀察者進行狀態更新。
  void deleteTodo(Todo todo) async {}

  /// 更新一個待辦事項並儲存到本地儲存中。
  ///
  /// 在待辦事項清單中找到待更新的待辦事項，並更新它，將更新後的待辦事項清單儲存到本地儲存中，通知所有的觀察者進行狀態更新。
  void updateTodo(Todo todo) async {}
}
