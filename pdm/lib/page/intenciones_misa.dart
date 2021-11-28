import 'package:flutter/material.dart';
import 'dart:async';
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
  DateTime _dateTime = DateTime.now();

  final horarios = ['07:00 - 08:00 am', '10:00 - 11:00 am', '01:00 - 2:00 pm', '04:00 - 05:00 pm', '07:00 - 08:00 pm'];
  String? valor_horario;
  final parroquias = ['Sedes', 'Santa Teresa', 'San Mateo'];
  String? valor_parroquia;

  void _showDatePicker(){
    showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(2021), 
      lastDate: DateTime(2035)
    ).then((value){
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(Intenciones.title),
        ),
        body: Builder(
          builder: (context) => Center(
            child: new Column(
              children: <Widget>[
                Text(_dateTime.day.toString()),
                Text(_dateTime.month.toString()),
                Text(_dateTime.year.toString()),
                Container(
                  //Divider(),
                  //child: SizedBox(height: 10),
                  padding: EdgeInsets.all(50.0),
                  child: ElevatedButton(onPressed: _showDatePicker, child: Text("Select date"))
                ),
                Container(
                  //padding: EdgeInsets.all(10.0),
                  child: DropdownButton<String>(
                    value: valor_horario,
                    isExpanded: false,
                    items: horarios.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() => this.valor_horario = value)
                  )
                ),
                Container(
                  //padding: EdgeInsets.all(10.0),
                  child: DropdownButton<String>(
                    value: valor_parroquia,
                    isExpanded: false,
                    items: parroquias.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() => this.valor_parroquia = value)
                  )
                ),
              ],
            ),
          ),
        ),
      );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    )
  );
}
