import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,//to remove debug banner
      theme:ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,//to use material 3 design
      ),
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {//stateful widget is used when the state of the widget changes over time
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _counter=0;

  // ignore: non_constant_identifier_names
  void _IncreaseCounter(){
    setState(() {//setState is used to update the state of the widget  
    _counter++;
    });
    debugPrint("Counter:$_counter");
  }

  // ignore: non_constant_identifier_names
  void _DecreaseCounter(){
    setState(() {//setState is used to update the state of the widget  
    _counter--;
    });
    debugPrint("Counter:$_counter");
  }
  // ignore: non_constant_identifier_names
  void _ResetCounter(){
    setState(() {//setState is used to update the state of the widget  
    _counter=0;
    });

    debugPrint("Counter:0");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Learning Application")
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Amount",
            style:Theme.of(context).textTheme.bodyLarge),
            Text(_counter.toString(),
            style:Theme.of(context).textTheme
            .displayMedium
            ?.copyWith(color:_counter<0?Colors.red:_counter==0?Colors.blue:Colors.green),
            ),

          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed:(){
              _IncreaseCounter();
            },
            backgroundColor: Colors.green,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            onPressed:(){
              _DecreaseCounter();
            },
            backgroundColor: Colors.red,
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            onPressed:(){
              _ResetCounter();
            },
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}