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
                          Text('Fecha de primera comunión'),
                          TextField(keyboardType: TextInputType.datetime)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Nombre del padrino'),
                          TextField(keyboardType: TextInputType.text)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Nombre de la madrina'),
                          TextField(keyboardType: TextInputType.text)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Persona beneficiada'),
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
