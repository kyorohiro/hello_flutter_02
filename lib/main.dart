import 'package:flutter/material.dart' as fl;

void main() {
  fl.runApp(MyApp());
}

class MyApp extends fl.StatelessWidget {
  fl.Widget build(fl.BuildContext context) {
    return new fl.MaterialApp(
        title: "Welcome to Fluttr",
        home: MyHomePage("Welcome to Fluttr"));
  }
}

class MyHomePage extends fl.StatefulWidget {
  final String title;
  MyHomePage(this.title);
  @override
  fl.State<fl.StatefulWidget> createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends fl.State<MyHomePage> {
  bool _visible = true;

  fl.Widget build(fl.BuildContext context) {
    return fl.Scaffold(
      appBar: fl.AppBar(title: fl.Text(widget.title),),
      body: fl.Center(
        child: fl.AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 50),
          child: fl.Container(
            width: 200.0,
            height: 200.0,
            color: fl.Colors.green,
          ),
        ),
      ),
      floatingActionButton: fl.FloatingActionButton(
        onPressed: (){
          print(">>>>>> PRESSED");
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: "Toggle Opacity",
        child: fl.Icon(fl.Icons.flip),
      ),
    );
  }
}