import 'package:course_app_04/list_view.dart';
import 'package:flutter/material.dart';

class GridViewTypes extends StatelessWidget {
  GridViewTypes({super.key});
  
  final List<Student> students=List.generate(100, (index){
    return Student(id:index+1,name:"Student ${index+1}",isBoy:index%2==0);
  },);

  @override
  Widget build(BuildContext context) {
    return //gridViewExtent();//Extent grid for gridview with max width or height of each container
           //gridViewCount();//Count grid for gridview with fixed number of containers in each row or column
           gridViewBuilder();//Builder grid for gridview with dynamic number of containers in each row or column based on the screen size
  }

  GridView gridViewBuilder() {
    return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(//gridDelegate is used to define the layout of the gridview
            crossAxisCount: 5), 
            itemCount:students.length,//itemCount is used to define the number of items in the gridview
            itemBuilder: (context,index){//itemBuilder is used to define the layout of each item in the gridview

              return Container(
                color: Colors.orange[100*((index%9)+1)],
                child: Text(students[index].toString()));});
  }

  GridView gridViewExtent() {
    return GridView.extent(//Extent grid for gridview with max width or height of each container
  primary: true,//scrollable
  reverse: false,//not reversed
  maxCrossAxisExtent: 200,//max width or height of each container
  padding: EdgeInsets.all(10),
  mainAxisSpacing: 20,
  crossAxisSpacing: 10,
  scrollDirection: Axis.vertical,//scroll direction of the gridview
  children: createContainers(20),
  );
  }

  GridView gridViewCount() {
    return GridView.count(
    primary: true,//scrollable
    reverse: false,//not reversed
    crossAxisCount: 5,//fixed number of containers in each row or column
    padding: EdgeInsets.all(10),
    mainAxisSpacing: 20,
    crossAxisSpacing: 10,
    scrollDirection: Axis.vertical,//scroll direction of the gridview
    children: createContainers(20),
    );
  }
}

List<Widget> createContainers(int length){
  return List.generate(length, (index){
    var colorShade=((index+1)%10)*100;
    var lastShade=colorShade==0 ? 100:colorShade=colorShade;
    return Container(
      color:Colors.purple[lastShade],
      child: Text(
        "Container:$lastShade",
        style: TextStyle(fontSize: 10),
        textAlign: TextAlign.center,
        ),
    );
  },);
}