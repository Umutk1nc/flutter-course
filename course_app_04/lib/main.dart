// ignore: unused_import
import 'package:course_app_04/card_listtile.dart';
import 'package:course_app_04/grid_view.dart';
// ignore: unused_import
import 'package:course_app_04/list_view.dart';
// ignore: unused_import
import 'package:course_app_04/one_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

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
      navigatorObservers: [FlutterSmartDialog.observer],
      builder: FlutterSmartDialog.init(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List and Data Processes'),
        ),
        body:GridViewTypes(),//GridViewTypes() for gridview with 100 students
        //body: OneRowListView(), // 50 student list with GestureDetector and SmartDialog on tap
        //body: OneRowListView().listView(), // scrollable ListView with OneRowListTile repeated twice
        //body: OneRowListView().singleChildScrollView(), // SingleChildScrollView with one OneRowListTile
        //body: CardListTile(), // OneRowListTile constrained inside a Card via Expanded, no scrolling
        
      ),
    );
  }
}
