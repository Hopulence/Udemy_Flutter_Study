import 'package:flutter/material.dart';

void main() => runApp(new RotationIconApp());
/* void main() {
    runApp(new RotationIconApp());
   } 랑 똑같음
*/
  class RotationIconApp extends StatelessWidget {
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ), // 앱 테마 지정, ThemeData 클래스 전달
        home: new MyHomePage(title: 'icon rotation'),
      );
    }
  } // end of RotationIconApp
  
  class MyHomePage extends StatefulWidget {
    //key-value 형식 생성자 만드는 법
    MyHomePage({Key key, this.title}) : super(key: key);
    
    final String title;
    
    @override
    _MyHomePageState createState() => new _MyHomePageState();
  } // end of MyHomePage

  class _MyHomePageState extends State<MyHomePage> {
    // <Generic> : 클래스나 메소드에서 사용할 내부 데이터 타입을 컴파일 시 미리 지정하는 방법

    var _position = 0.0;
    
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Slider(
                  value: _position,
                  onChanged: (var position) {
                    setState(() {
                      _position = position;
                    });
                  }
                ),
             new Transform.rotate(
                 angle: _position * 2 * 3.14,
                  child: new Icon(Icons.android),
                ),
            new Transform.rotate(
              angle: _position * -2 * 3.14,
              child: new Icon(Icons.android),
                ),
              ],
          )
        ),
      );
    }
  } // end of MyHomePageState

