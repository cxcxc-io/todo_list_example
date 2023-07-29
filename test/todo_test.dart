// 引入 'dart:convert' 來使用 JSON 相關功能。
import 'dart:convert';

// 引入 flutter_test 來進行單元測試。
import 'package:flutter_test/flutter_test.dart';

// 引入 uuid 用於生成唯一的 id。
import 'package:uuid/uuid.dart';

// 引入 Todo 類別，這是我們要測試的對象。
import 'package:flutter_application_1/models/todo.dart'; // 假定 todo.dart 路徑為 'todo.dart'

// main() 函數是測試的起始點。
void main() {
  // 定義一個測試的組別名為 'Todo'。
  group('Todo', () {
    // 定義用於測試的變數。
    var uuid;
    var testId;
    var json;
    var todo;
    var jsonString;

    // setUp() 函數會在每個測試案例開始前執行，用於初始化或設置測試數據。
    setUp(() {
      // 初始化 UUID 和測試用的 id。
      uuid = const Uuid();
      testId = uuid.v4();

      // 定義一個 JSON 對象，用於模擬 Todo 物件的資料。
      json = {
        'id': testId,
        'title': 'Test Todo',
        'description': 'Test Description',
        'completed': false,
      };

      // 用 json 創建一個 Todo 物件，用於測試。
      todo = Todo.fromJson(json);

      // 將 Todo 物件轉換為 JSON 字串。
      jsonString = todo.toJsonString();
    });

    // 測試 'fromJson' 方法是否能正確轉換 JSON 對象。
    test('fromJson', () {
      expect(todo.id, testId);
      expect(todo.title, 'Test Todo');
      expect(todo.description, 'Test Description');
      expect(todo.completed, false);
    });

    // 測試 'toJsonString' 方法是否能正確轉換 Todo 物件為 JSON 字串。
    test('toJsonString', () {
      var expectedJsonMap =
          jsonEncode(json); // 使用 jsonEncode 轉換 JSON 對象，以避免格式問題。
      expect(jsonString, expectedJsonMap);
    });

    // 測試 '==' 運算子，檢查是否正確比較兩個 Todo 物件的相等性。
    test('equality operator', () {
      var anotherTodo = Todo.fromJson(json);
      expect(todo == anotherTodo, true);
    });

    // 測試 'hashCode' 屬性，檢查是否正確計算 Todo 物件的哈希碼。
    test('hashCode', () {
      var anotherTodo = Todo.fromJson(json);
      expect(todo.hashCode, anotherTodo.hashCode);
    });
  });
}
