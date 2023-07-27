/// [TodoComponent] 是一個帶狀態的組件，主要用於表示一個待辦事項。
///
/// 內有 2 個小按鍵：完成，記錄緩存並須同步到另外一個統計 Screen[TodoStatisticsScreen]。刪除，將待辦事項移除，並更新緩存。
class TodoComponent extends StatefulWidget {
  final Todo todo;
  final Function() onRemove;
}

class _TodoComponentState extends State<TodoComponent> {
  Widget checkTaskCompleteBox = Checkbox();
  Widget taskText = Expanded();
}
