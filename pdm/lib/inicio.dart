import 'package:flutter/material.dart';
import 'package:pdm/page/contacto_page.dart';
import 'package:pdm/page/donaciones_page.dart';
import 'package:pdm/page/sacramentos.dart';
import 'package:pdm/widget/button_widget.dart';
import 'package:pdm/widget/navigation_drawer_widget.dart';

class MyApp extends StatelessWidget {
  static final String title = 'Inicio';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.red),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Builder(
          builder: (context) => Center(
            child: new Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200.0,
                  width: 340,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side:
                            BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                    onPressed: () {
                      MaterialPageRoute(builder: (context) => sacramentos());
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white38,
                    textColor: Colors.black,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Sacramentos    ",
                            style:
                                TextStyle(fontSize: 34, color: Colors.black)),
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
                        side:
                            BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DonacionesPage()),
                      );
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white38,
                    textColor: Colors.black,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Donaciones      ",
                            style:
                                TextStyle(fontSize: 34, color: Colors.black)),
                        WidgetSpan(child: Icon(Icons.monetization_on, size: 70))
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
                        side:
                            BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                    onPressed: () {},
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white38,
                    textColor: Colors.black,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Examen de conciencia        ",
                            style:
                                TextStyle(fontSize: 34, color: Colors.black)),
                        WidgetSpan(child: Icon(Icons.list_sharp, size: 70))
                      ])),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}