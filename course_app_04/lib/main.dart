// ignore: unused_import
import 'package:course_app_04/card_listtile.dart';
// ignore: unused_import
import 'package:course_app_04/list_view.dart';
// ignore: unused_import
import 'package:course_app_04/one_row_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false, //to remove debug banner
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List and Data Processes'),
        ),
        body: CardListTile(),//CardListTile(),//OneRowListView()
      ),
    );
  }
}
