// TodoProviderService 類別是一個 Todo 數據服務，主要作用是透過 TodoDao 和前端互動

// 建構子需要傳入 context，讓這個類別有能力讀取 Provider 所提供的數據

// 插入一個 Todo 數據，通過 read 方法獲取 TodoDao，然後調用其 insertTodo 方法

// 刪除一個 Todo 數據，通過 read 方法獲取 TodoDao，然後調用其 deleteTodo 方法

// 獲取所有的 Todo 數據，通過 read 方法獲取 TodoDao，然後調用其 getTodos 方法

// 監聽所有的 Todo 數據變化，通過 watch 方法獲取 TodoDao，然後調用其 getTodos 方法

// 切換一個 Todo 的完成狀態，通過 read 方法獲取 TodoDao，然後調用其 updateTodo 方法
// 切換 Todo 的完成狀態
// 更新該 Todo

// 透過 getTodos() 獲取所有 Todo 的清單, 迴圈判定已完成的任務並放入新的清單, 判定清單的元素數, 獲取已完成的任務有幾個

// 篩選出已完成的待辦事項

// 返回已完成待辦事項的數量
class TodoProviderService {
  Future<void> insertTodo(Todo todo) async {}
  Future<void> deleteTodo(Todo todo) async {}
  Future<List<Todo>> getTodos() async {}
  Future<List<Todo>> watchTodos() async {}
  Future<void> toggleTodoCompleted(Todo todo) async {}
  Future<int> getNumberOfCompletedTodos() async {}
}
