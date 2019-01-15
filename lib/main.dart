import 'package:flutter/material.dart' as fl;

void main() {
  fl.runApp(MyApp());
}

class MyApp extends fl.StatelessWidget {
  fl.Widget build(fl.BuildContext context) {
    fl.MaterialApp app =
      new fl.MaterialApp(
        title: "Welcome to Fluttr",
        home: fl.Scaffold(appBar: fl.AppBar(
          title: fl.Text("Welcome to Flutter"),
        ),
        body: fl.Center(
          child: fl.Text("Hello World!!"),
        ),)
      );
    return app;
  }
}
