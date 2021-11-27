import 'package:flutter/material.dart';
import 'package:pdm/page/contacto_page.dart';
import 'package:pdm/page/donaciones_page.dart';
import 'package:pdm/page/solicitud_sacramentos.dart';
import 'package:pdm/widget/button_widget.dart';
import 'package:pdm/widget/navigation_drawer_widget.dart';

class Intenciones extends StatelessWidget {
  static final String title = 'Intenciones';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.red),
        home: IntencionesMisa(),
      );
}

class IntencionesMisa extends StatefulWidget {
  @override
  _IntencionesMisaState createState() => _IntencionesMisaState();
}

class _IntencionesMisaState extends State<IntencionesMisa> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      
    );
  }
}
