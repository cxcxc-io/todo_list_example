// TodoStatisticsScreen 是一個 StatelessWidget，此部件用於顯示目前待辦事項的數量

// 建構畫面
// 實體化待辦事項服務

// 使用 FutureBuilder 來等待非同步操作完成並獲取結果
// 用 Future.wait 同時等待多個 Future 完成
// 從待辦事項服務中獲取所有待辦事項
// 從待辦事項服務中獲取已完成的待辦事項數量
// builder 函數用來構建小部件，根據非同步操作的結果來決定構建什麼
// 如果 Future 還在等待，則顯示一個圓形進度指示器
// 如果在獲取資料的過程中出現錯誤，則顯示錯誤訊息
// 如果資料已經返回，則顯示待辦事項的數量和已完成的待辦事項數量
// 從 snapshot 中獲取待辦事項列表
// 從 snapshot 中獲取已完成的待辦事項數量
// 返回一個包含兩個文字小部件的容器
// 顯示待辦事項的總數
// 顯示已完成的待辦事項數量
class TodoStatisticsScreen extends StatelessWidget {}
