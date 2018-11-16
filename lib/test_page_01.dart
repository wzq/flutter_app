import 'package:flutter/material.dart';
import 'network.dart';
import 'dart:convert';

class TestPage1 extends StatelessWidget {
//  var net = HttpUtil();

  @override
  Widget build(BuildContext context) {
//    net.topicList().then((v) {
//      print(v);
//      Map map = json.decode(v);
//    });
    return createView();
  }

  Widget createView() {
    return new Scaffold(
      drawer: new Drawer(),
      floatingActionButton: new FloatingActionButton(onPressed: () {}),
      appBar: new AppBar(
        title: const Text("测试"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.flight),
            tooltip: 'Air it',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.playlist_add),
            tooltip: 'Restitch it',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.playlist_add_check),
            tooltip: 'Repair it',
            onPressed: () {},
          ),
        ],
      ),
      body: new Card(color: Colors.yellow, child: Text("ab"),margin: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 0.0),)
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: "ttt",
    home: new TestPage1(),
  ));
}
