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

  String _value='';
  int _barValue = 0;
  String _floatingActionValue = '';

  void _onClicked() {
    setState(() => _floatingActionValue = new DateTime.now().toString() );
  }


  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2021));

    if(picked != null) {
      setState(() => _value = picked.toString()
      );
    }

  }

  void _add() => setState(() => _barValue++);
  void _remove() => setState(() => _barValue--);


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
     appBar: new AppBar(
       title: new Text('Name Here'),
       backgroundColor: Colors.red,
       actions: <Widget>[
          new IconButton(icon: new Icon(Icons.add), onPressed: _add),
         new IconButton(icon: new Icon(Icons.remove), onPressed: _remove),


       ],
     ),
      floatingActionButton: new FloatingActionButton(
          onPressed: _onClicked,
      mini: true,
      child: new Icon(Icons.timer)),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_barValue.toString(), style:new TextStyle(fontWeight:FontWeight.bold,fontSize:37.0)),
              new ElevatedButton(onPressed:  _selectDate, child: new Text('Select date') ),
              new Text(_floatingActionValue)
            ],
          )
        )
      ),
    );
  }
}



