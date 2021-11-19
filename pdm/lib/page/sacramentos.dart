import 'package:flutter/material.dart';
import 'package:pdm/inicio.dart';
import 'package:pdm/widget/navigation_drawer_widget.dart';

class sacramentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Builder(
            builder: (context) => Center(
                  child: new Column(
                    children: <Widget>[
                      //Botón
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200.0,
                        width: 340,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: Color.fromRGBO(0, 160, 227, 1))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sacramentos()));
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white38,
                          textColor: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Bautismo    ",
                                  style: TextStyle(
                                      fontSize: 34, color: Colors.black)),
                              WidgetSpan(child: Icon(Icons.pin_drop, size: 70))
                            ])),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200.0,
                        width: 340,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: Color.fromRGBO(0, 160, 227, 1))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sacramentos()));
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white38,
                          textColor: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Confirmación    ",
                                  style: TextStyle(
                                      fontSize: 34, color: Colors.black)),
                              WidgetSpan(child: Icon(Icons.check, size: 70))
                            ])),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200.0,
                        width: 340,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: Color.fromRGBO(0, 160, 227, 1))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sacramentos()));
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white38,
                          textColor: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Primera comunión        ",
                                  style: TextStyle(
                                      fontSize: 34, color: Colors.black)),
                              WidgetSpan(child: Icon(Icons.book, size: 70))
                            ])),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200.0,
                        width: 340,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: Color.fromRGBO(0, 160, 227, 1))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sacramentos()));
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white38,
                          textColor: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Matrimonio        ",
                                  style: TextStyle(
                                      fontSize: 34, color: Colors.black)),
                              WidgetSpan(child: Icon(Icons.book, size: 70))
                            ])),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200.0,
                        width: 340,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: Color.fromRGBO(0, 160, 227, 1))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sacramentos()));
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white38,
                          textColor: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Orden sacerdotal    ",
                                  style: TextStyle(
                                      fontSize: 34, color: Colors.black)),
                              WidgetSpan(child: Icon(Icons.pin_drop, size: 70))
                            ])),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 200.0,
                        width: 340,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: Color.fromRGBO(0, 160, 227, 1))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sacramentos()));
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white38,
                          textColor: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Consagración    ",
                                  style: TextStyle(
                                      fontSize: 34, color: Colors.black)),
                              WidgetSpan(child: Icon(Icons.pin_drop, size: 70))
                            ])),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
      );
}
