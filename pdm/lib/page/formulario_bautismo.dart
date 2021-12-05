import 'package:flutter/material.dart';
import 'package:pdm/colecciones/database_bautizos.dart';
import 'package:pdm/page/solicitud_sacramentos.dart';

class formulario_bautismo extends StatefulWidget {
  formulario_bautismo({Key? key, required this.db}) : super(key: key);
  DatabaseB db;
  @override
  _formulario_bautismoState createState() => _formulario_bautismoState();
}

class _formulario_bautismoState extends State<formulario_bautismo> {
  TextEditingController _personaController = new TextEditingController();
  TextEditingController _ministroController = new TextEditingController();
  TextEditingController _diocesisController = new TextEditingController();
  @override
  void initState() {
    super.initState();
  }

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

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    )
  );
  
  @override
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
                child: Text(
                  "Fecha de bautismo",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                /* padding: EdgeInsets.all(15),
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ), */
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: _showDatePicker, child: Text("Seleccionar fecha"))
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Ministro",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: TextField(
                    controller: _ministroController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)
                      )
                    ),
                  ))
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Nombre de la persona beneficiada",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: TextField(
                    controller: _personaController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)
                      )
                    ),
                  ))
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Diocesis",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: TextField(
                    controller: _diocesisController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0)
                      )
                    ),
                  ))
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Parroquia",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Expanded(child: 
                Container(
                  //padding: EdgeInsets.all(10.0),
                  child: DropdownButton<String>(
                    value: valor_parroquia,
                    isExpanded: false,
                    items: parroquias.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() => this.valor_parroquia = value)
                  )
                )
               )
             ],
          ),
              Container(
                margin: EdgeInsets.all(10),
                width: 150,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                  onPressed: (){
                  widget.db.create("$_dateTime".toString(), _ministroController.text, _personaController.text, _diocesisController.text, "$valor_parroquia".toString());
                  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        solicitud_sacramentos()));
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