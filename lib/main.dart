import 'package:flutter/material.dart' as fl;

void main() {
  fl.runApp(MyApp());
}

class MyApp extends fl.StatelessWidget {
  fl.Widget build(fl.BuildContext context) {
    return new fl.Directionality(textDirection: fl.TextDirection.ltr, child: new fl.Text("xxx"));
  }
}
