import 'dart:convert';

import 'package:uuid/uuid.dart';

class Todo {
  // 屬性
  String id; // 新增的 id 屬性
  String title;
  String description;
  bool completed;

  /// 建構子
  Todo(this.id, this.title, this.description, this.completed);

  /// 序列化，將物件直接轉換為 json string
  String toJsonString() {
    Map<String, dynamic> _jsonMap = {
      "id": id, // 新增 id 至 json map 中
      "title": title,
      "description": description,
      "completed": completed,
    };
    return jsonEncode(_jsonMap);
  }

  /// 讀取 json map 並轉換成物件的建構子
  factory Todo.fromJson(Map<String, dynamic> _json) {
    var uuid = const Uuid();
    // 提取內容值
    String id = _json["id"] ?? uuid.v4(); // 新增讀取 id 的程式碼
    String title = _json["title"];
    String description = _json["description"];
    bool completed = _json["completed"];

    // 回傳物件
    return Todo(id, title, description, completed); // 將 id 新增至建構子參數中
  }
}
