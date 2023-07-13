import 'package:flutter/material.dart';

import '../models/todo.dart';
import '../services/todo_provider_service.dart';

// TodoStatisticsScreen 是一個 StatelessWidget，此部件用於顯示目前待辦事項的數量
class TodoStatisticsScreen extends StatelessWidget {
  const TodoStatisticsScreen({super.key});

  // 建構畫面
  @override
  Widget build(BuildContext context) {
    // 實體化待辦事項服務
    TodoProviderService _todoProviderService = TodoProviderService(context);

    return FutureBuilder<List<Todo>>(
      // 從待辦事項服務中獲取所有待辦事項
      future: _todoProviderService.getTodos(),
      builder: (BuildContext context, AsyncSnapshot<List<Todo>> snapshot) {
        // 如果正在等待資料返回，則顯示一個圓形進度指示器
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        // 如果在獲取資料的過程中出現錯誤，則顯示錯誤訊息
        else if (snapshot.hasError) {
          return Text('錯誤: ${snapshot.error}');
        }
        // 如果資料已經返回，則顯示待辦事項的數量
        else {
          return Container(
              margin: const EdgeInsets.all(12),
              alignment: Alignment.topLeft,
              child: Text(
                // 用於判斷是否有待辦事項，如果有，則顯示待辦事項的數量，否則顯示0
                "目前的Todo數量為 ${(snapshot.data![0].title.contains('尚無任務')) ? 0 : snapshot.data!.length}",
                // 根據畫面寬度動態調整字體大小
                style: TextStyle(
                    fontSize:
                        MediaQuery.of(context).size.width > 800 ? 24 : 16),
              ));
        }
      },
    );
  }
}
