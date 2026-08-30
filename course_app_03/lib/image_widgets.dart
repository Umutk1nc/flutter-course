import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget{
  const ImageWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Image Widgets"),),
      body: Center(
        child:Column(
          children: [
            Expanded(child:
              Container(
                color: Colors.blueAccent,
                child:Image.asset("assets/fabrice-villard-Jrl_UQcZqOc-unsplash.jpg",
                fit: BoxFit.cover),
                ),
              ),
            Expanded(child:
              Container(
                color: Colors.blueAccent,
                child:Image.asset("assets/sashamatic-raven-9312419_1920.jpg",
                fit: BoxFit.cover),
                ),),
            Expanded(child: CircleAvatar(
              backgroundImage:AssetImage("assets/jake-blucker-tMzCrBkM99Y-unsplash.jpg"),
              radius: 50,
            )),
          ],
        ), 
      ),
    );
  }
}