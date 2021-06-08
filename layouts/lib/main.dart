import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _State();
  }

}

class _State extends State<MyApp> {

  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar:new AppBar(
        title:new Text('Layouts')
      ),

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child:new Center(
          child: new Column(
            children: <Widget>[
              new Text('Please Login'),
              new Row(
                children: <Widget>[
                  new Text('username:'),
                  new Expanded(child: new TextField(controller:_user,),)
                ]
              ),
              new Row(
                  children: <Widget>[
                    new Text('password: '),
                    new Expanded(child: new TextField(controller:_pass,obscureText: true,),)
                  ]
              ),
              new Padding(
                padding:EdgeInsets.all(12.0),
                child:new ElevatedButton(onPressed:() => print('username: ${_user.text}'),child:new Text('login'))
              )
            ]

          )
        )
      )



    );
  }

}