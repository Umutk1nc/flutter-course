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
        body:Row(
          children: [
            Expanded(//Expanded widget is used to make the child Container take up the available space in the Row
            flex:2,//flex property is used to specify the proportion of space that the child Container should take up in the Row
              child: Container(
                width: 50,
                height: 150,
                color:Colors.amberAccent,
              ),
            ),
            Flexible(//Flexible widget is used to make the child Container take up the available space in the Row
            fit:FlexFit.tight,//fit property is used to specify how the child Container should fit within the Flexible space
              child: Container(
                width: 100,
                height: 150,
                color:Colors.deepOrange,
              ),
            ),
            Expanded(
              flex:2,
              child: Container(
                width: 150,
                height: 150,
                color:Colors.deepPurple,
              ),
            ),
          ],
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

  Container myContainer() {
    return Container(
        color:Colors.lime,
        height:100,
        width: 100,
        padding: EdgeInsets.all(10),//padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),//padding: EdgeInsets.only(left: 10,top: 10),
        margin:EdgeInsets.symmetric(horizontal: 5,vertical:5),//margin:EdgeInsets.only(left: 50,top: 50),
        alignment: Alignment.center,//alignment: Alignment.bottomRight,
        child:Container(//child:Text("Hello Flutter"),
          height:50,
          width:100,
          color:Colors.lightBlueAccent,
          alignment: Alignment.center,//center alignment of the child Text
          child:const Text("Hello Flutter"),//Hello Flutter Text is inside the child Container
          )
        );
  }
}