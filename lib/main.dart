import 'package:flutter/material.dart' as fl;

void main() {
  fl.runApp(MyApp());
}

class MyApp extends fl.StatelessWidget {
  fl.Widget build(fl.BuildContext context) {
    return fl.MaterialApp(
      title: "SnackBar Demo",
      home: fl.Scaffold(
        appBar: fl.AppBar(
          title:  fl.Text("AppBar"),
        ),
        body: fl.Text(
            "Hello, World!!",
            style: getCustomFontTextStyle()),
      ),
    );
  }
}


fl.TextStyle getCustomFontTextStyle() {
  // text style which defines a custom font
  return const fl.TextStyle(
    // set color of text
      color: fl.Colors.blueAccent,
      // set the font family as defined in pubspec.yaml
      fontFamily: 'Roboto',
      // set the font weight
      fontWeight: fl.FontWeight.w400,
      // set the font size
      fontSize: 36.0);
}