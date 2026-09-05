import 'package:flutter/material.dart';
class OneRowListTile extends StatelessWidget {
  const OneRowListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(//Column widget is used to arrange its children vertically.
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
              ),
              trailing: CircleAvatar(
                child:Icon(Icons.arrow_back)),
            title: Text("Umut"),
            subtitle: Text("Student"),
          ),
          Divider(
            thickness:2,
            indent: 20,
            color:Colors.black),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
              ),
              trailing: CircleAvatar(
                child:Icon(Icons.arrow_back)),
            title: Text("Kıvanç"),
            subtitle: Text("Student"),
          ),
          Divider(
            thickness:2,
            indent: 20,
            color:Colors.black),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
              ),
              trailing: CircleAvatar(
                child:Icon(Icons.arrow_back)),
            title: Text("Ali"),
            subtitle: Text("Student"),
          ),
          Divider(
            thickness:2,
            indent: 20,
            color:Colors.black),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
              ),
              trailing: CircleAvatar(
                child:Icon(Icons.arrow_back)),
            title: Text("Mehmet"),
            subtitle: Text("Student"),
          ),
          Divider(
            thickness:2,
            indent: 20,
            color:Colors.black),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
              ),
              trailing: CircleAvatar(
                child:Icon(Icons.arrow_back)),
            title: Text("Berk"),
            subtitle: Text("Student"),
          ),
          Divider(
            thickness:2,
            indent: 20,
            color:Colors.black),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
              ),
              trailing: CircleAvatar(
                child:Icon(Icons.arrow_back)),
            title: Text("Veli"),
            subtitle: Text("Student"),
          ),
          Divider(
            thickness:2,
            indent: 20,
            color:Colors.black),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
              ),
              trailing: CircleAvatar(
                child:Icon(Icons.arrow_back)),
            title: Text("Fahrettin"),
            subtitle: Text("Student"),
          ),
          Divider(
            thickness:2,
            indent: 20,
            color:Colors.black),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
              ),
              trailing: CircleAvatar(
                child:Icon(Icons.arrow_back)),
            title: Text("Zeki"),
            subtitle: Text("Student"),
          ),
          Divider(
            thickness:2,
            indent: 20,
            color:Colors.black),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
              ),
              trailing: CircleAvatar(
                child:Icon(Icons.arrow_back)),
            title: Text("Murat"),
            subtitle: Text("Student"),
          ),
          Divider(
            thickness:2,
            indent: 20,
            color:Colors.black),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.add),
              ),
              trailing: CircleAvatar(
                child:Icon(Icons.arrow_back)),
            title: Text("Yusuf"),
            subtitle: Text("Student"),
          ),
          Divider(
            thickness:2,
            indent: 20,
            color:Colors.black),
          
          ],
        );
  }
}