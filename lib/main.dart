import 'package:flutter/material.dart' as fl;

void main() {
  fl.runApp(MyApp());
}

class MyApp extends fl.StatelessWidget {
  fl.Widget build(fl.BuildContext context) {
    return new fl.MaterialApp(
        title: "Welcome to Fluttr",
        home: MyHomePage());
  }
}

class MyHomePage extends fl.StatelessWidget {
  @override
  fl.Widget build(fl.BuildContext context) {
    return new fl.Scaffold(
      appBar: fl.AppBar(title: fl.Text("title"),),
      body: fl.Text("Hello World")
    );
  }
}