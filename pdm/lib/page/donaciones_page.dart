import 'package:flutter/material.dart';

class DonacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Donaciones'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Builder(
          builder: (context) => Center(
            child: new Column(
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Agradecemos mucho su apoyo"),
                  ),
                )
              ],
            )
          )
        ),
      );
}
