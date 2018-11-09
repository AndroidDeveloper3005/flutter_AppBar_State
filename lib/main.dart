import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

//will not change
class MyApp extends StatefulWidget{
  @override
  _MyState createState()=> new _MyState();

  }

//will change
class _MyState extends State<MyApp>{
  String _title = "App Bar Demo";
  String _myState = "No State";


  void _press(String message){
    setState(() {
      _myState = message;
    });
    print(_myState);

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar:  new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.add_alert)
                , onPressed: (){
              _press("Alert Press");
            }),
            new IconButton(icon: new Icon(Icons.print)
                , onPressed: (){
                  _press("Print Press");
                }),
            new IconButton(icon: new Icon(Icons.people)
                , onPressed: (){
                  _press("People Press");
                }),

            
          ],
        ),
        body: new Container(
          padding:  const EdgeInsets.all(32.0),
          child:  new Center(
            child: new Text(_myState),

          ),
        ),
      ),
    );
  }

}

