// 屬性
// 新增的 id 屬性
/// 建構子

/// 序列化，將物件直接轉換為 json string
// 新增 id 至 json map 中

/// 讀取 json map 並轉換成物件的建構子
// 提取內容值

// 回傳物件
// 將 id 新增至建構子參數中
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
  String toJsonString() {}

  /// 讀取 json map 並轉換成物件的建構子
  factory Todo.fromJson(Map<String, dynamic> _json) {}
}
