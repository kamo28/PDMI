import 'package:flutter/material.dart';

class formulario_bautismo extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Bautismo"),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Text("Fecha de bautismo"),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text("Ministro"),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text("Nombre de la persona beneficiada"),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text("Diocesis"),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text("Parroquia"),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
        )),
      );
}
