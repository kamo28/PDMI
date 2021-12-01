import 'package:flutter/material.dart';

class formulario_bautismo extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Bautismo"),
        ),
        body: Builder(
            builder: (context) => Center(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Fecha de matrimonio'),
                          TextField(keyboardType: TextInputType.datetime)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Nombre del conyuge'),
                          TextField(keyboardType: TextInputType.text)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Apellido del conyuge'),
                          TextField(keyboardType: TextInputType.text)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Nombre del primer testigo'),
                          TextField(keyboardType: TextInputType.text)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Nombre del segundo testigo'),
                          TextField(keyboardType: TextInputType.text)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Nombre del tercer testigo'),
                          TextField(keyboardType: TextInputType.text)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Nombre del cuarto testigo'),
                          TextField(keyboardType: TextInputType.text)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Diocesis'),
                          TextField(keyboardType: TextInputType.text)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Parroquia'),
                          TextField(keyboardType: TextInputType.text)
                        ],
                      ),
                    ],
                  ),
                )),
      );
}
