import 'package:flutter/material.dart' as fl;

void main() {
  fl.runApp(MyApp());
}

class MyApp extends fl.StatelessWidget {
  fl.Widget build(fl.BuildContext context) {
    return new fl.MaterialApp(
        title: "Welcome to Fluttr",
        home: MyHomePage(),
    );
  }
}

class MyHomePage extends fl.StatelessWidget {
  @override
  fl.Widget build(fl.BuildContext context) {
    return new fl.Scaffold(
      appBar: fl.AppBar(title: fl.Text("title"),),
      body: fl.Text("Hello World"),
      drawer: MyDeawerHeader(),
    );
  }
}

class MyDeawerHeader extends fl.StatelessWidget {
  @override
  fl.Widget build(fl.BuildContext context) {
    fl.Drawer drawer = fl.Drawer(
      child: fl.ListView(
        padding: fl.EdgeInsets.zero,
        children: <fl.Widget>[
          fl.DrawerHeader(
            child: fl.Text("xxxx"),
            decoration: fl.BoxDecoration(
              color: fl.Colors.blue
            ),
          ),
          fl.ListTile(
            title: fl.Text("Item 1"),
            onTap:(){
              print("tap1");
              fl.Navigator.pop(context);
            }
          ),
          fl.ListTile(
              title: fl.Text("Item 2"),
              onTap:(){
                print("tap2");
                fl.Navigator.pop(context);
              }
          )
        ],
      )
    );

    return drawer;
  }
}