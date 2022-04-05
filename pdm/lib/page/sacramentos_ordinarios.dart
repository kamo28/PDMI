import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pdm/colecciones/database_intenciones.dart';
import 'package:pdm/inicio.dart';
import 'package:pdm/page/solicitud_sacramentos.dart';
import 'package:pdm/page/horarios.dart';
import 'package:pdm/page/examen.dart';
import 'package:pdm/page/intenciones_misa.dart';

class sacramentos_ordinarios extends StatefulWidget {
  const sacramentos_ordinarios({Key? key}) : super(key: key);

  @override
  _sacramentos_ordinariosState createState() => _sacramentos_ordinariosState();
}

class _sacramentos_ordinariosState extends State<sacramentos_ordinarios> {
  late DatabaseI db;
  List docs = [];
  initialise() {
    db = DatabaseI();
    db.initiliase();
    db.read().then((value) => {
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
                      //Botón
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
                                      builder: (context) => Exam()));
                            },
                            padding: EdgeInsets.all(10.0),
                            color: Colors.white38,
                            textColor: Colors.black,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Examen de conciencia       ",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black)),
                                WidgetSpan(
                                    child:
                                        Icon(Icons.checklist_rounded, size: 50))
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
                                          IntencionesMisa(db: db)));
                            },
                            padding: EdgeInsets.all(10.0),
                            color: Colors.white38,
                            textColor: Colors.black,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Intenciones \nde misa            ",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black)),
                                WidgetSpan(
                                    child: Icon(
                                        Icons.settings_accessibility_rounded,
                                        size: 50))
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
                                      builder: (context) => Horarios()));
                            },
                            padding: EdgeInsets.all(10.0),
                            color: Colors.white38,
                            textColor: Colors.black,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Horarios \nde misa                    ",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black)),
                                WidgetSpan(
                                    child:
                                        Icon(Icons.schedule_rounded, size: 50))
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
