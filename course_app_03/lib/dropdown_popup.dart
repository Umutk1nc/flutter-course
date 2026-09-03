import 'package:flutter/material.dart';

class DropdownPopup extends StatelessWidget{
  const DropdownPopup({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [PopUpMenu()],
        
        title:Text("Dropdown and Pop-Up Widgets"),),
      body: Center(
        child: Column(
          children: [CustomDropDown()],
        ),
        
      ),
    );
  }
}
class CustomDropDown extends StatefulWidget{
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  // ignore: prefer_final_fields
  var _cities=["Adana","Ankara","İstanbul","İzmir"];
  String? _chosenCity;
  @override
  Widget build(BuildContext context){
    return DropdownButton<String>(
      hint: Text("Select City"),
      value: _chosenCity,
      items:_cities.map(
        (String city)=> DropdownMenuItem(
          value:city,
          child: Text(city),
          )
        ).toList(),
      onChanged: (value){
        debugPrint("City:$value");
        setState(() {
          _chosenCity=value!;
        });
      },
    );
  
  }
}


class PopUpMenu extends StatefulWidget{
  const PopUpMenu ({super.key});
  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu>{
  final _cities=["Adana","Ankara","İstanbul","İzmir"];
  var _chosenCity="Ankara";
  @override
  Widget build (BuildContext context) {
    return PopupMenuButton<String>(
      initialValue: _chosenCity,
      itemBuilder:(context){
      return _cities.map((String city){
        return PopupMenuItem(
          value:city,
          child: Text(city));
      },).toList();
    },
    onSelected: (value){
      setState(() {
        _chosenCity=value;
      });
    });
  }
}