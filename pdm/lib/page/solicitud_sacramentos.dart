import 'package:flutter/material.dart';
import 'package:pdm/inicio.dart';
import 'package:pdm/page/formulario_bautismo.dart';
import 'package:pdm/page/formulario_matrimonio.dart';
import 'package:pdm/page/formulario_primeracomunion.dart';
import 'package:pdm/widget/navigation_drawer_widget.dart';

class solicitud_sacramentos extends StatelessWidget {
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
}
