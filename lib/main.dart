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
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends fl.StatelessWidget {
  @override
  fl.Widget build(fl.BuildContext context) {
    return fl.Center(
      child: fl.RaisedButton(
        onPressed: () {
          print("onClick Button");
          fl.SnackBar mySnackBar = fl.SnackBar(
            content: fl.Text("A SnackBar!!"),
            action: fl.SnackBarAction(
              label: "Undo",
              onPressed: (){
                print("onClick on SnackBar");
              },
            ),
          );
          fl.Scaffold.of(context).showSnackBar(mySnackBar);
        },
        child:  fl.Text("Show snackBar"),
      ),
    );
  }
}
