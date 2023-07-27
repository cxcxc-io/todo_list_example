import 'dart:convert';

import 'package:uuid/uuid.dart';

/// 待辦事項的 [Model] 物件。
///
/// 屬性與建構子：
/// * [String] id，待辦事項的 ID。
/// * [String] title，待辦事項項目標題。
/// * [String] description，待辦事項項目描述。
/// * [bool] completed，待辦事項是否已完成。
///
/// 方法：
/// * [String] toJsonString()，序列化，將物件直接轉換為 json string。
/// * [Todo] fromJson()，讀取 json map 並轉換成物件的建構子。
class Todo {}
