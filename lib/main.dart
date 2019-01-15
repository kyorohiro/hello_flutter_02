import 'package:flutter/material.dart' as fl;
import 'package:english_words/english_words.dart' as en;

void main() {
  fl.runApp(MyApp());
}

class MyApp extends fl.StatelessWidget {
  fl.Widget build(fl.BuildContext context) {
    final wordPair = en.WordPair.random();
    fl.MaterialApp app =
      new fl.MaterialApp(
        title: "Welcome to Fluttr",
        home: fl.Scaffold(appBar: fl.AppBar(
          title: fl.Text("Welcome to Flutter"),
        ),
        body: fl.Center(
          child: fl.Text(wordPair.asPascalCase),
        ),)
      );
    return app;
  }
}
