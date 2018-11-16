import 'package:flutter/material.dart';
import 'network.dart';
import 'dart:convert';

void main() {
  runApp(new MaterialApp(
    title: "test",
    home: new TestStateView(),
  ));
}

class TestStateView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _StateView();
  }
}

class _StateView extends State<TestStateView> {
  List data = new List();

  @override
  void initState() {
    super.initState();
    var net = HttpUtil();
    net.topicList().then((v) {
      net.topicList().then((v) {
        Map map = json.decode(v);
        List list = map['stories'];
        setState(() {
          data.addAll(list);
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('title'),
        ),
        body: new ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              ItemView(data[index]),
          itemCount: data.length,
        ));
  }
}

class ItemView extends StatelessWidget {
  const ItemView(this.itemData);

  final Map itemData;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new InkWell(
        child: new Card(
          color: Colors.white,
          child: _getRow(),
        ),
      ),
    );
  }

  Widget _getRow() {
    List images = itemData['images'];
    String title = itemData['title'];
    return new Container(child: new Row(
      children: <Widget>[
        Image.network(
          images[0],
          width: 140.0,
          height: 80.0,
        ),
        Expanded(
          child: Text(
            title,
            maxLines: 3,
          ),
        )
      ],
    ), margin: EdgeInsets.all(8.0),);
  }
}
