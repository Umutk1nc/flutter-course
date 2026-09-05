import 'package:course_app_04/one_row_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OneRowListView  extends StatelessWidget{
  OneRowListView ({super.key});

  List<Student> allStudents=List.generate(50, ((index) =>
  Student(id: index,name:"Student Name:$index",isBoy:index%2==0) ) ,);//List.generate() method is used to generate a list of 50 students with id, name and isBoy properties.



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allStudents.length,
      itemBuilder: (context, index) => Card(//Card widget is used to create a card-like UI for each student in the list.
        color:allStudents[index].isBoy
       ? Colors.blue.shade200
       : Colors.red.shade200,
       child: ListTile(
        title:Text(allStudents[index].name),
        leading: CircleAvatar(child: Text(index.toString()),),
       ),  
    ),
  );}

  ListView listView() {//ListView is a scrollable list of widgets arranged linearly.
    return ListView(
    children: [
      OneRowListTile(),
      OneRowListTile(),
    ],
  );
  }

  SingleChildScrollView singleChildScrollView() {//SingleChildScrollView is a scrollable widget that has a single child.
    return const SingleChildScrollView(
    child:OneRowListTile(),//SingleChildScrollView is a scrollable widget that has a single child.

  );
  }
}

class Student{
  final int id;
  final String name;
  final bool isBoy;

  Student({required this.id, required this.name, required this.isBoy});
}