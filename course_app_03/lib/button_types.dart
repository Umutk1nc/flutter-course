import 'package:flutter/material.dart';

class ButtonTypes extends StatelessWidget {
  const ButtonTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Types")),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                  (states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Colors.green;
                    }
                    return Colors.blue; // Use the component's default.
                  },
                ),
              ),
              child: Text("Text Button"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Text Button With Icon"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
            
            
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Elevated Button With Icon"),
            ),
            OutlinedButton(onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.all(16),
              side: BorderSide(color: Colors.blue, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              foregroundColor: Colors.blue,
              backgroundColor: Colors.grey[200],
              
            ), 
            child: Text("Outline Button"),


            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.blue, width: 2),
                backgroundColor: Colors.yellow,
              ),
              icon: Icon(Icons.add),
              label: Text("Outlined Button With Icon"),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}