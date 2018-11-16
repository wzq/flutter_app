import 'package:flutter/material.dart';
import 'network.dart';

class TestStaticView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(child: new Text("test view"));
  }

}


void main() {
  const list = const[1,2,3,4,5,6];

//  print(list);

//  list.forEach((it) => print(it));

  Map map = {1:"one", 2:"two", 3:"three"}..remove(2);

//  print(map);

  map[4] = "four";

//  print(map);

  var net = new HttpUtil();

//  net.getResult().then((value){
//    print(value);
//  });
//  print(111);

  runApp(new Center(
      child: new Text(
        "abc",
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        style: new TextStyle(color: Colors.white, background: new Paint()..color= Colors.blue),
      )));
}
