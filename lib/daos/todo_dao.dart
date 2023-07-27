/// TodoDao 類別是一個狀態提供器，它會將待辦事項儲存在本地裝置的持久儲存中。
// 用於存取本地儲存的 SharedPreferences 物件。
/// 設定 SharedPreferences 實例。

// 待辦事項的清單。
// 從本地儲存中獲取所有待辦事項。
// 如果待辦事項清單為空，則添加一條“尚無任務”的待辦事項。

// 新增一個待辦事項到清單中，並將其儲存到本地儲存中。

// 將待辦事項清單儲存到本地儲存中。
// 通知所有的觀察者進行狀態更新。

// 從待辦事項清單和本地儲存中刪除一個待辦事項。

// 從清單中刪除一個待辦事項。

// 更新本地儲存中的待辦事項清單。

// 通知所有的觀察者進行狀態更新 。

// 更新一個待辦事項並儲存到本地儲存中。

// 在待辦事項清單中找到待更新的待辦事項，並更新它。

// 將更新後的待辦事項清單儲存到本地儲存中。

// 通知所有的觀察者進行狀態更新。
class TodoDao extends ChangeNotifier {
  static SharedPreferences? _localCachePrefs;

  static Future<void> _setLocalStoragePrefClient() async {}
  Future<List<Todo>> getTodos() async {}
  void insertTodo(Todo todo) async {}
  void deleteTodo(Todo todo) async {}
  void updateTodo(Todo todo) async {}
}
