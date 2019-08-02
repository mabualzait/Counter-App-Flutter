import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CounterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterState();
  }
}

class CounterState extends State<CounterApp> {
  int _counter = 0;

  void setCounterValue() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Counter"),
        backgroundColor: Colors.lightGreen,
      ),
      backgroundColor: Colors.grey.shade300,
      body: new Column(
        children: <Widget>[
          new Center(
            child: new Text(
              "Counter App!",
              style: new TextStyle(
                  fontSize: 28,
                  color: Colors.green,
                  fontWeight: FontWeight.w500),
            ),
          ),
          new Expanded(
              child: new Center(
            child: new Text(
              "$_counter",
              style: new TextStyle(
                  color: _counter >33 ?Colors.green : Colors.red,
                  fontSize: 25.5,
                  fontWeight: FontWeight.w500),
            ),
          )),
          new Expanded(
            child: new Center(
              child: new FlatButton(
                onPressed: setCounterValue,
                color: Colors.lightGreen,
                child: new Text(
                  "Add",
                  style: new TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
