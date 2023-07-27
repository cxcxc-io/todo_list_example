/// [Todo] 的邏輯服務。
///
/// [TodoProviderService] 類別是一個 [Todo] 數據服務，主要作用是透過 [TodoDao] 和前端互動。
class TodoProviderService {
  /// 建構子需要傳入 [context]，讓這個類別有能力讀取 [Provider] 所提供的數據。
  final BuildContext context;

  /// 插入 [Todo]。
  ///
  /// 插入一個 [Todo] 數據，通過 [read] 方法獲取 [TodoDao]，然後調用其 [TodoDao.insertTodo] 方法。
  Future<void> insertTodo(Todo todo) async {}

  /// 刪除 [Todo]。
  ///
  /// 刪除一個 [Todo] 數據，通過 [read] 方法獲取 [TodoDao]，然後調用其 [TodoDao.deleteTodo] 方法。
  Future<void> deleteTodo(Todo todo) async {}

  /// 獲得 [Todo] 的清單。
  ///
  /// 獲取所有的 [Todo] 數據，通過 [read] 方法獲取 [TodoDao]，然後調用其 [TodoDao.getTodos] 方法。
  Future<List<Todo>> getTodos() async {}

  /// 監聽 [Todo] 的變化。
  ///
  /// 監聽所有的 [Todo] 數據變化，通過 [watch] 方法獲取 [TodoDao]，然後調用其 [TodoDao.getTodos] 方法。
  Future<List<Todo>> watchTodos() async {}

  /// 切換 [Todo] 的完成狀態，更新該 [Todo]。
  ///
  /// 切換一個 [Todo] 的完成狀態，通過 [read] 方法獲取 [TodoDao]，然後調用其 [TodoDao.updateTodo] 方法。
  Future<void> toggleTodoCompleted(Todo todo) async {}

  /// 取出已完成的 [Todo] 數量。
  ///
  /// 透過 [getTodos] 獲取所有 [Todo] 的清單, 迴圈判定已完成的任務並放入新的清單, 判定清單的元素數, 獲取已完成的任務有幾個。
  Future<int> getNumberOfCompletedTodos() async {}
}
