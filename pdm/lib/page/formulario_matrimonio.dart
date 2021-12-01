import 'package:flutter/material.dart';

class formulario_matrimonio extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Matrimonio"),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Fecha de matrimonio"),
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
                padding: EdgeInsets.all(10),
                child: Text("Nombre del conyuge"),
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
                padding: EdgeInsets.all(10),
                child: Text("Apellido del conyuge"),
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
                padding: EdgeInsets.all(10),
                child: Text('Nombre del primer testigo'),
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
                padding: EdgeInsets.all(10),
                child: Text('Nombre del segundo testigo'),
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
                padding: EdgeInsets.all(10),
                child: Text('Nombre del tercer testigo'),
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
                padding: EdgeInsets.all(10),
                child: Text('Nombre del cuarto testigo'),
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
                padding: EdgeInsets.all(10),
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
                padding: EdgeInsets.all(10),
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
              Container(
                margin: EdgeInsets.all(10),
                width: 150,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => formulario_matrimonio()));
                  },
                  padding: EdgeInsets.all(10.0),
                  color: Colors.white38,
                  textColor: Colors.black,
                  child: Align(
                    alignment: Alignment.center,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Enviar datos",
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                    ])),
                  ),
                ),
              ),
            ],
          ),
        )),
      );
}
