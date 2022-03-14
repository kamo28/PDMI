import 'package:flutter/material.dart';
import 'package:pdm/inicio.dart';
import 'package:pdm/page/formulario_bautismo.dart';
import 'package:pdm/page/formulario_matrimonio.dart';
import 'package:pdm/page/formulario_primeracomunion.dart';
import 'package:pdm/widget/navigation_drawer_widget.dart';
import 'package:pdm/colecciones/database_bautizos.dart';
import 'package:pdm/colecciones/database_comunion.dart';
import 'package:pdm/colecciones/database_matrimonio.dart';

class solicitud_sacramentos extends StatefulWidget {
  const solicitud_sacramentos({Key? key}) : super(key: key);

  @override
  _solicitud_sacramentosState createState() => _solicitud_sacramentosState();
}

class _solicitud_sacramentosState extends State<solicitud_sacramentos> {
  late DatabaseB db1;
  late DatabaseC db2;
  late DatabaseM db3;
  List docs = [];
  initialise() {
    db1 = DatabaseB();
    db1.initiliase();
    db1.read().then((value) => {
          setState(() {
            docs = value;
          })
        });

    db2 = DatabaseC();
    db2.initiliase();
    db2.read().then((value) => {
          setState(() {
            docs = value;
          })
        });

    db3 = DatabaseM();
    db3.initiliase();
    db3.read().then((value) => {
          setState(() {
            docs = value;
          })
        });
  }

  @override
  void initState() {
    super.initState();
    initialise();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Solicitud de Sacramentos"),
        ),
        body: Builder(
            builder: (context) => Center(
                  child: new Column(
                    children: <Widget>[
                      Expanded(
                        //Botón
                        child: Container(
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
                                      builder: (context) =>
                                          formulario_bautismo(db: db1)));
                            },
                            padding: EdgeInsets.all(10.0),
                            color: Colors.white38,
                            textColor: Colors.black,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Bautismo         ",
                                    style: TextStyle(
                                        fontSize: 34, color: Colors.black)),
                                WidgetSpan(child: Icon(Icons.water, size: 70))
                              ])),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
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
                                      builder: (context) =>
                                          formulario_primeracomunion(db: db2)));
                            },
                            padding: EdgeInsets.all(10.0),
                            color: Colors.white38,
                            textColor: Colors.black,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Primera\ncomunión        ",
                                    style: TextStyle(
                                        fontSize: 34, color: Colors.black)),
                                WidgetSpan(
                                    child: Icon(Icons.breakfast_dining_rounded,
                                        size: 70))
                              ])),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
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
                                      builder: (context) =>
                                          formulario_matrimonio(db: db3)));
                            },
                            padding: EdgeInsets.all(10.0),
                            color: Colors.white38,
                            textColor: Colors.black,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Matrimonio     ",
                                    style: TextStyle(
                                        fontSize: 34, color: Colors.black)),
                                WidgetSpan(
                                    child: Icon(Icons.group_rounded, size: 70))
                              ])),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
      );
}

/* class solicitud_sacramentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Solicitud de Sacramentos"),
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
                                    builder: (context) =>
                                        formulario_bautismo()));
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white38,
                          textColor: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Bautismo         ",
                                  style: TextStyle(
                                      fontSize: 34, color: Colors.black)),
                              WidgetSpan(child: Icon(Icons.water, size: 70))
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
                                    builder: (context) =>
                                        formulario_primeracomunion()));
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white38,
                          textColor: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Primera\ncomunión        ",
                                  style: TextStyle(
                                      fontSize: 34, color: Colors.black)),
                              WidgetSpan(
                                  child: Icon(Icons.breakfast_dining_rounded,
                                      size: 70))
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
                                    builder: (context) =>
                                        formulario_matrimonio()));
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white38,
                          textColor: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Matrimonio     ",
                                  style: TextStyle(
                                      fontSize: 34, color: Colors.black)),
                              WidgetSpan(
                                  child: Icon(Icons.group_rounded, size: 70))
                            ])),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
      );
} */
