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
          child:
          //fl.Text(wordPair.asPascalCase),
          RandomWords(),
        ),)
      );
    return app;
  }
}

class RandomWords extends fl.StatefulWidget {
  @override
  fl.State<fl.StatefulWidget> createState() {
    return new RandomWorldsState();
  }

}

class RandomWorldsState extends fl.State<RandomWords> {
  final _suggestions = <en.WordPair>[];
  final _beggerFont = const fl.TextStyle(fontSize: 18.0);

  @override
  fl.Widget build(fl.BuildContext context) {
    return fl.Scaffold(
      appBar: fl.AppBar(
        title: fl.Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
  fl.Widget _buildSuggestions() {
    return fl.ListView.builder(
      padding: const fl.EdgeInsets.all(16.0),
      itemBuilder: (fl.BuildContext context, int i) {
        if(i.isOdd) {
          return fl.Divider();
        }

        final index = i ~/2;
        if(index >= _suggestions.length) {
          _suggestions.addAll(en.generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  fl.Widget _buildRow(en.WordPair pair) {
    return fl.ListTile(
      title: new fl.Text(pair.asPascalCase, style: _beggerFont),
    );
  }
}