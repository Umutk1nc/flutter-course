import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          centerTitle: true,
          title:Text("Profile Page"),
        ),
        body:Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children:[
                CircleAvatar(
                  radius: 96,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage("https://img.icons8.com/?size=100&id=HmQQr0jYHZxu&format=png&color=000000"),
                ),
                Text("Umut Kılınç",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold)),
                Text("Computer Engineering Student",style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w400)),
                Card(
                  child:Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children:[
                        Expanded(child: Column(children: [
                          Text("20",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                          Text("Posts")
                        ],),),
                        Expanded(child: Column(children: [
                          Text("122k",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                          Text("Followers")
                        ],),),
                        Expanded(child: Column(children: [
                          Text("285",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                          Text("Following")
                        ],),),
                      ],
                    ),
                  ) ,
                ),
                Card(
                  child:Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text("About",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    SizedBox(height: 8,),
                    Text("I'm a student learning mobile app development with Flutter. I'm improving my skills in widgets, layout structures, and state management.",)],),
                  ))

              ]
            ),
          ),
        )
      ),
    );
  }
}