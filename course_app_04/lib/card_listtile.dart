import 'package:course_app_04/one_row_widget.dart';
import 'package:flutter/material.dart';

class CardListTile extends StatefulWidget {
  const CardListTile({super.key});


  @override
  State<CardListTile> createState() => _CardListTileState();
}

class _CardListTileState extends State<CardListTile>{
  @override Widget build(BuildContext context) {
    return Center(
      child: Card(
        color:Colors.white70,
        shadowColor:Colors.black,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child:Column(
          children: [
            Expanded(child: OneRowListTile()),//Expanded widget is used to make the OneRowListTile widget take up all available space in the column.
          ],
        ),
        ),
    );
  }
}