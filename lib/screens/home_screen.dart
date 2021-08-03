import 'package:flutter/material.dart';

// TODO: ホーム画面のレイアウトを作成する
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
