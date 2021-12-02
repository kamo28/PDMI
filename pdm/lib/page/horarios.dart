import 'package:flutter/material.dart';
import 'package:pdm/page/contacto_page.dart';
import 'package:pdm/page/donaciones_page.dart';
import 'package:pdm/page/solicitud_sacramentos.dart';
import 'package:pdm/widget/button_widget.dart';
import 'package:pdm/widget/navigation_drawer_widget.dart';

class Horarios extends StatelessWidget {
  static final String title = 'Horarios';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.red),
        home: MisaHorarios(),
      );
}

class MisaHorarios extends StatefulWidget {
  @override
  _MisaHorariosState createState() => _MisaHorariosState();
}

class _MisaHorariosState extends State<MisaHorarios> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(Horarios.title),
        ),
        body: Builder(
          builder: (context) => Center(
            child: new Column(
              children: <Widget>[
                //Botón de donaciones
                Container(
                  padding: EdgeInsets.all(50.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Horarios de las misas en la parroquia",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(/////////////////////////////////////////////////////////////////////////
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("7:00 - 8:00 am\n10:00 - 11:00 am\n1:00 - 2:00 pm\n4:00 - 5:00 pm\n7:00 - 8:00 pm",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                //No lleva a ninguna pantalla (borrar cuando se solucione)
              ],
            ),
          ),
        ),
      );
}
