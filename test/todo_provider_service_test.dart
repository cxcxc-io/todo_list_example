import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/services/todo_provider_service.dart'; // 待辦事項提供者服務
import 'package:flutter_application_1/models/todo.dart'; // 待辦事項模型
import 'package:flutter_application_1/daos/todo_dao.dart'; // 待辦事項的 DAO
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart'; // Provider 套件，用於狀態管理
import 'package:shared_preferences/shared_preferences.dart'; // SharedPreferences 套件，用於讀寫 app 設定

void main() {
  SharedPreferences.setMockInitialValues({}); // 設置SharedPreferences初始值

  // 定義一個名為 'TodoProviderService' 的測試組
  group('TodoProviderService', () {
    // 定義一個測試 'getTodos'，測試能否正確取得待辦事項
    testWidgets('getTodos', (WidgetTester tester) async {
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => TodoDao(),
            )
          ],
          child: Builder(
            builder: (BuildContext context) {
              TodoProviderService todoProviderService =
                  TodoProviderService(context);
              todoProviderService.getTodos().then((todos) {
                expect(todos[0].title, "尚無任務");
              });
              return const Placeholder();
            },
          ),
        ),
      );
    });

    // 定義一個測試 'insertTodo'，測試能否正確新增待辦事項
    testWidgets('insertTodo', (WidgetTester tester) async {
      var context;
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => TodoDao(),
            )
          ],
          child: Builder(
            builder: (BuildContext _context) {
              context = _context;
              return const Placeholder();
            },
          ),
        ),
      );
      TodoProviderService todoProviderService = TodoProviderService(context);
      Todo todo = Todo("1", "title", "description", false);
      await todoProviderService.insertTodo(todo);
      List<Todo> todos = await todoProviderService.getTodos();
      expect(todos, [todo]);
    });

    // 定義一個測試 'watchTodos'，測試能否正確監視待辦事項變動
    testWidgets('watchTodos', (WidgetTester tester) async {
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => TodoDao(),
            )
          ],
          child: Builder(
            builder: (BuildContext context) {
              TodoProviderService todoProviderService =
                  TodoProviderService(context);
              todoProviderService.watchTodos().then((todos) {
                expect(todos[0].title, "title");
              });
              return const Placeholder();
            },
          ),
        ),
      );
    });

    // 定義一個測試 'toggleTodoCompleted'，測試能否正確切換待辦事項的完成狀態
    testWidgets('toggleTodoCompleted', (WidgetTester tester) async {
      var context;
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => TodoDao(),
            )
          ],
          child: Builder(
            builder: (BuildContext _context) {
              context = _context;
              return const Placeholder();
            },
          ),
        ),
      );
      TodoProviderService todoProviderService = TodoProviderService(context);
      Todo toggleTodo = Todo("1", "title", "description", false);
      await todoProviderService.toggleTodoCompleted(toggleTodo);
      List<Todo> todos = await todoProviderService.getTodos();
      expect(todos[0].completed, true);
    });

    // 定義一個測試 'getNumberOfCompletedTodos'，測試能否正確取得已完成待辦事項數量
    testWidgets('getNumberOfCompletedTodos', (WidgetTester tester) async {
      var context;
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => TodoDao(),
            )
          ],
          child: Builder(
            builder: (BuildContext _context) {
              context = _context;
              return const Placeholder();
            },
          ),
        ),
      );
      TodoProviderService todoProviderService = TodoProviderService(context);
      int todos = await todoProviderService.getNumberOfCompletedTodos();
      expect(todos, 1);
    });
  });
}
