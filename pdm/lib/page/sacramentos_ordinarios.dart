import 'package:flutter/material.dart';

class sacramentos_ordinarios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de sacramentos',
      home: new Center(
          child: new Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            height: 200.0,
            width: 340,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
              onPressed: () {},
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              textColor: Color.fromRGBO(0, 160, 227, 1),
              child: Text("Rounded Button With White Fill",
                  style: TextStyle(fontSize: 15)),
            ),
          )
        ],
      )),
    );
  }
}
