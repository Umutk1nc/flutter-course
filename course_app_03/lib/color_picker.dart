import 'dart:math';
import 'package:flutter/material.dart';

class ColorPickerPage extends StatefulWidget{
  const ColorPickerPage ({super.key});
  @override
  State<ColorPickerPage> createState() => _ColorPickerPageState();
}
class _ColorPickerPageState extends State <ColorPickerPage>{
  bool isCircular=false;
  bool isShowColorname=true;
  
  void _changeShape(){
    setState(() {
      if (isCircular){
        isCircular=false;
      }
      else{isCircular=true;}
    });

  }

  void _selectRandomColor(){
    final colors=_colors.keys.toList();
    final colorNames=_colors.values.toList();
    final randomNumber=Random().nextInt(colors.length);
    final randomColor=colors[randomNumber];
    final randomColorName=colorNames[randomNumber];
    setState(() {
      selectedColor=randomColor;
      debugPrint("Random color:$randomColorName");
      
    });
  }
 Color selectedColor=Colors.blue;
 final Map<Color,String> _colors={
    Colors.red:"Red",
    Colors.blue:"Blue",
    Colors.green:"Green",
    Colors.black:"Black",
    Colors.yellow:"Yellow",
    Colors.purple:"Purple",
    Colors.orange:"Orange"
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Picker"),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                isShowColorname=!isShowColorname;
              });
            },
            itemBuilder: (context){
            return [PopupMenuItem(
              value:"" ,
              child: Row(
                children: [
                  Text("Show/Hide Color Name"),
                ],
              ),)];

          },icon:Icon(Icons.more_vert),
          ),
        ],
      ),
      body: 
      Center(
        child:Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color:selectedColor,
                borderRadius: BorderRadius.circular(isCircular ? 100:10),
                boxShadow:[BoxShadow(
                  color: selectedColor.withValues(alpha: 0.5),
                  spreadRadius: 10,
                  blurRadius:2,
                  ),]
                ),
            ),
            SizedBox(
              height:10 ,
            ),
            isShowColorname ? Text(_colors[selectedColor]?? "Selected Color"):SizedBox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  DropdownButton<Color>(
                    value: selectedColor,
                    items: _colors.entries.map((entry){
                    return DropdownMenuItem(
                      value:entry.key,
                      child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          color:entry.key,
                        ),
                        SizedBox(width: 4,),
                        Text(entry.value)
                      ],
                    ));
                  }).toList(), 
                  onChanged: (value){
                    setState(() {
                      selectedColor=value!;
                    });
                    
              
                  },),
                  ElevatedButton(onPressed: (){_selectRandomColor();}, child: Text("Random")),
                  IconButton(
                    onPressed: _changeShape,
                    icon: Icon(isCircular ? Icons.square_outlined: Icons.circle_outlined),
                  ),
              
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}