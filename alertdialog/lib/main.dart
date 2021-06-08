import 'package:flutter/material.dart';
import 'dart:async';

void main(){

  runApp(new MaterialApp(
    home:new MyApp(),
  ));

}

class MyApp extends StatefulWidget{



  @override
  createState() => new _State();

}

class _State extends State<MyApp> {
  Future _showAlert(BuildContext context, String message) async {
    return showDialog(builder: (context) => new AlertDialog(
      title: new Text(message),
      actions: <Widget>[

        new TextButton(onPressed: () => Navigator.pop(context), child: new Text('ok'))

      ],
    ), context: context);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: new AppBar(
       title: new Text('Name Here'),
     ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Hello World"),
              new ElevatedButton(onPressed: () => _showAlert(context,"Do you like Flutter?"),child:new Text("Click Me"))
            ],
          )
        )
      ),
    );
  }
}



