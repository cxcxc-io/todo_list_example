// 引入 Todo 類別和 TodoDao 類別，這是我們要測試的對象。
import 'package:flutter_application_1/models/todo.dart';
import 'package:flutter_application_1/daos/todo_dao.dart';

// 引入 flutter_test 來進行單元測試。
import 'package:flutter_test/flutter_test.dart';

// 引入 shared_preferences，用於模擬 SharedPreferences 的行為。
import 'package:shared_preferences/shared_preferences.dart';

// 主函數是測試的起始點。使用 'async' 關鍵字，因為在測試中使用了 'await'。
void main() async {
  // 設置 SharedPreferences 的模擬初始值為空的 Map。
  SharedPreferences.setMockInitialValues({});

  // 創建 TodoDao 的實例。
  TodoDao todoDao = TodoDao();

  // 定義一個測試組別 'TodoDao'，用於對 TodoDao 進行多個測試。
  group('TodoDao', () {
    // 測試 'getTodos' 方法，檢查是否能正確獲取 Todos。
    test('getTodos', () async {
      expect((await todoDao.getTodos())[0].title, "尚無任務");
    });

    // 測試 'insertTodo' 方法，檢查是否能正確插入一個新的 Todo。
    test('insertTodo', () async {
      Todo todo = Todo("1", "title", "description", false);
      await TodoDao().insertTodo(todo);
      expect(await todoDao.getTodos(), [todo]);
    });

    // 測試 'updateTodo' 方法，檢查是否能正確更新一個 Todo。
    test('updateTodo', () async {
      Todo newTodo = Todo("1", "newTitle", "newDescription", true);
      await TodoDao().updateTodo(newTodo);
      expect(await todoDao.getTodos(), [newTodo]);
    });

    // 測試 'deleteTodo' 方法，檢查是否能正確刪除一個 Todo。
    test('deleteTodo', () async {
      Todo toDeleteTodo = Todo("1", "newTitle", "newDescription", true);
      await TodoDao().deleteTodo(toDeleteTodo);
      expect((await todoDao.getTodos())[0].title, "尚無任務");
    });
  });
}
