/// 這是一個手機版的側滑抽屜（Drawer）元件，提供選單的選項讓用戶進行頁面導航。
///
/// 抽屜主要包含一個 [ListView] 元件，包含兩個選項：
/// * 抽屜中的第一個選項，標題為"TodoList清單"，導向 [TodoListScreen]，點擊時調用回調函數，並傳入選項索引為0，點擊後關閉抽屜。
/// * 抽屜中的第二個選項，標題為"任務統計頁面" [TodoStatisticsScreen]，點擊時調用回調函數，並傳入選項索引為1，點擊後關閉抽屜。
class MobileDrawer extends StatelessWidget {
  /// 這是一個回調函數，來自 [MobileView]，當用戶點擊抽屜中的一個選項時，會調用這個函數並傳入選項的索引。
  final ValueChanged<int> onItemTapped;
}
