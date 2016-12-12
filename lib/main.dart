import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'iOS Text',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextStyle navBarTitle = new TextStyle(
        fontFamily: '.SF UI Display',
        inherit: false,
        fontSize: 17.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
        textBaseline: TextBaseline.alphabetic);
    TextStyle body1 = const TextStyle(
        fontFamily: '.SF UI Text',
        inherit: false,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
        textBaseline: TextBaseline.alphabetic);

    return new Scaffold(
      body: new SizedBox.expand(
        child: new Padding(
          padding: new EdgeInsets.only(top: 35.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              new Flexible(
                flex: 1,
                child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border(
                      bottom: new BorderSide(
                        color: Colors.black12,
                      ),
                    ),
                  ),
                  child: new Text(
                    'About',
                    style: navBarTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              new Flexible(flex: 5, child: new Container()),
              new Text(
                'iOS 10.1.1\nYour software is up to date.',
                style: body1,
                textAlign: TextAlign.center,
              ),
              new Flexible(flex: 20, child: new Container()),
            ],
          ),
        ),
      ),
    );
  }
}
