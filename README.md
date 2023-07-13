# TodoList 應用程式
## 功能簡介
此應用程式是一款簡單的 TodoList，主要可以協助用戶進行以下事項：
* 記錄待辦事項（todo）
* 管理待辦事項，如新增、刪除
* 查看待辦事項的完成狀態，並可以將待辦事項標記為完成或未完成
* 提供待辦事項統計視圖，可以查看已完成和未完成的待辦事項的數量
* 將待辦事項數據儲存於本地，即使應用程式關閉再重新開啟，數據也不會消失

## 啟動應用
若要啟動此應用程式，請按照以下步驟操作：

* 確認你的開發環境已經安裝 Flutter 和 Dart SDK。
* 開啟終端機（terminal），並將目錄切換到此應用程式的根目錄。
* 在終端機中輸入以下命令來啟動應用程式：
`flutter pub upgrade`
`flutter run`

## 程式碼架構
此應用程式主要由以下幾個部分組成：

* Model（模型層）：包括 Todo 類別，代表一個待辦事項，含有待辦事項的標題、說明、是否完成等屬性。
* DAO（數據訪問層）：包括 TodoDao 類別，主要負責與本地儲存進行交互，如獲取所有待辦事項、插入新的待辦事項、刪除待辦事項等。
* Provider Service（服務層）：包括 TodoProviderService 類別，主要通過 TodoDao 與前端互動，並提供待辦事項的增刪查改等操作。
* Screen（視覺層）：包括 TodoListScreen 和 TodoStatisticsScreen，分別代表待辦事項清單頁面和待辦事項統計頁面。
* Controller（控制層）：包括 PlatformController，主要負責判斷用戶裝置的平台類型，並根據平台類型切換不同的介面。
* View（視圖層）：這部分主要是包含各個 Screen ，將資料以適當的方式呈現給用戶。
* Component（元件層）：這部分主要是用於封裝各個可重複使用的 UI 元件，如待辦事項清單的元件、待辦事項統計的元件等。

## 程式碼檔案大綱
* main.dart：應用程式的入口檔案，設定主題樣式並調用 PlatformController 作為首頁。
* platform_controller.dart：根據用戶裝置的平台類型，切換不同的介面。
* todo_dao.dart：處理待辦事項的數據操作，包括獲取、新增和刪除待辦事項。
* todo_provider_service.dart：透過 TodoDao 與前端互動，提供待辦事項的增刪查改等操作。
* todo_list_screen.dart：顯示待辦事項的清單，並能進行新增、刪除和標記完成等操作。這裡包含了視圖和元件的部分。
* todo_statistics_screen.dart：顯示待辦事項的統計資訊。這裡也包含了視圖和元件的部分。
* todo.dart：定義 Todo 類別，包括待辦事項的標題、說明、是否完成等屬性，並提供序列化和反序列化的方法。
* mobile_view.dart：類別主要在移動裝置上呈現應用程式的主介面，其主要包含兩個內容頁面、一個抽屜式側邊欄以及一個可選顯示的浮動操作按鈕。
* web_view.dart：一個 StatefulWidget，其主要功能是呈現應用程式的主要操作界面。
* mobile_drawer.dart：一個定義於 Flutter 中的側滑選單元件。
* todo_component.dart：一個用於表示待辦事項的組件。此組件是一個 StatefulWidget，代表它有自己的狀態管理。
