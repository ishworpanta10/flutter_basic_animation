import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  @override
  _SandBState createState() => _SandBState();
}

class _SandBState extends State<SandBox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;
  var _alignment = Alignment.bottomCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 600),
            width: _width,
            color: _color,
            margin: EdgeInsets.all(_margin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _margin = 40;
                    });
                  },
                  child: Text("Animate Margin"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _color = Colors.grey;
                    });
                  },
                  child: Text("Animate Color"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _width = 400;
                    });
                  },
                  child: Text("Animate width"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _opacity = 0;
                    });
                  },
                  child: Text("Animate Opacity"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(seconds: 2),
                  child: Text(
                    'Hide ME',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text("Animate Alignment"),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          AnimatedContainer(
            padding: EdgeInsets.all(10.0),
            duration: Duration(seconds: 2),
            alignment: _alignment,
            child: Container(
              height: 200.0,
              child: Icon(
                Icons.airplanemode_active,
                size: 50.0,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            setState(() {
              _alignment = Alignment.bottomLeft;
            });
          },
          icon: Icon(Icons.airplanemode_active),
          label: Text("Take Flight")),
    );
  }
}
