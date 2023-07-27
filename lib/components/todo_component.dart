// TodoComponent 是一個帶狀態的組件，主要用於表示一個待辦事項。
// 帶狀態組件的核心資料，包括 Todo 物件和一個移除待辦事項的函數。

// 建構子，初始化時需要傳入一個 Todo 物件和一個移除待辦事項的函數。

// 建立和返回這個組件的狀態物件。

// 狀態類別，用於儲存和管理 TodoComponent 的狀態。
// 實作 build 方法，返回一個 Row 組件包含一個核選框和一個文字標籤。
// 核選框，當核選框的值被改變時，會更新 Todo 物件的完成狀態。
// 更新Todo是否完成

// Todo 標題，如果 Todo 完成，則會顯示刪除線。
// 更新Todo是否完成

// 返回一個包含核選框和文字標籤的 Row 組件。
class TodoComponent extends StatefulWidget {
  final Todo todo;
  final Function() onRemove;
}

class _TodoComponentState extends State<TodoComponent> {
  Widget checkTaskCompleteBox = Checkbox();
  Widget taskText = Expanded();
}
