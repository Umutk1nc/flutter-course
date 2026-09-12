import 'package:course_app_04/one_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

// ignore: must_be_immutable
class OneRowListView  extends StatelessWidget{
  OneRowListView ({super.key});

  List<Student> allStudents=List.generate(50, ((index) =>
  Student(id: index,name:"Student Name:$index",isBoy:index%2==0) ) ,);//List.generate() method is used to generate a list of 50 students with id, name and isBoy properties.



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allStudents.length,
      itemBuilder: (context, index) => GestureDetector(//GestureDetector widget is used to detect user interactions with the card widget.
        onLongPress: (){
          debugPrint("Card Widget has been clicked=> ${allStudents[index].name}");
        },
        child:Card(//Card widget is used to create a card-like UI for each student in the list.
          color:allStudents[index].isBoy
          ? Colors.blue.shade200
          : Colors.red.shade200,
          child: ListTile(
            onTap: () {
              debugPrint("ListTile Widget has been clicked=> ${allStudents[index].name}");
              SmartDialog.show(builder: (context) {//SmartDialog widget is used to show a dialog box when the ListTile widget is clicked.
                return Container(
                  height: MediaQuery.of(context).size.height*0.4,//height of the dialog box is 40% of the screen height.
                  width: MediaQuery.of(context).size.width*0.8,//width of the dialog box is 80% of the screen width.
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child:
                  Text("ListTile has been clicked=> ${allStudents[index].name}", style: TextStyle(color: Colors.white)),
                  );
                }); 
            },
            title:Text(allStudents[index].name),
            leading: CircleAvatar(child: Text(index.toString()),)
            ),  
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


  @override
  String toString(){
    return name;
  }
}