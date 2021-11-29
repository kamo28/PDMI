import 'package:flutter/material.dart';

class formulario_bautismo extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Bautismo"),
        ),
        body: Builder(
            builder: (context) => Center(
                  child: new Column(
                    children: <Widget>[
                      Text('Fecha de bautismo'),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Text('Ministro'),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Text('Nombre del beneficiado'),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Text('Nombre del beneficiado'),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Text('Diocesis'),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Text('Parroquia'),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                )),
      );
}
