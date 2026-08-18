import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(const TestApp());

}
class TestApp extends StatelessWidget{
  const TestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.blueAccent,
          title:const Text("Test App"),//Title of the AppBar
        ),  
        body:Container(
          color:Colors.lime,
          height: 100,
          width: 200,
          padding: EdgeInsets.all(10),//padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),//padding: EdgeInsets.only(left: 10,top: 10),
          margin:EdgeInsets.symmetric(horizontal: 50,vertical:50),//margin:EdgeInsets.only(left: 50,top: 50),
          alignment: Alignment.center,//alignment: Alignment.bottomRight,
          child:Container(//child:Text("Hello Flutter"),
            height:40,
            width:100,
            color:Colors.lightBlueAccent,
            alignment: Alignment.center,//center alignment of the child Text
            child:const Text("Hello Flutter"),//Hello Flutter Text is inside the child Container
            )
          ),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(//Floating Action Button with icon
          onPressed: () {
            debugPrint("Button Has Been Clicked");
            },
          backgroundColor: Colors.greenAccent,
          child:const Icon(Icons.add_a_photo_outlined),
          ),
      ),
    );
  }
}