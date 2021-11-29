import 'package:flutter/material.dart';
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
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController correoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  DateTime _dateTime = DateTime.now();

  final horarios = ['07:00 - 08:00 am', '10:00 - 11:00 am', '01:00 - 2:00 pm', '04:00 - 05:00 pm', '07:00 - 08:00 pm'];
  String? valor_horario;
  final parroquias = ['Sedes', 'Santa Teresa', 'San Mateo'];
  String? valor_parroquia;

  final TextEditingController persona = TextEditingController();

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
  Widget build(BuildContext context){
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(Intenciones.title),
      ),
      body: SingleChildScrollView(child:Column(
        children: [
          //espacio 
          Row(
            children: [
              Container(
                height: 15,
              )
            ],
          ),
          //titulo de pagina
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 alignment: Alignment.center,
                 height: 50,
                 child: Text(
                   'Favor de llenar los siguientes campos',
                    textAlign: TextAlign.center ,
                    style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.black, fontSize: 20)),
               )
             ],
          ),
          //espacio 
          Row(
            children: [
              Container(
                height: 30,
              )
            ],
          ),
          //titulo nombre de usuario
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Expanded(child: 
               Container(
                 child: Text(
                   'Fecha de la misa deseada',
                    textAlign: TextAlign.start ,
                    style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black)),
               )
               )
             ],
          ),
          //campo de nombre de usuario
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Expanded(child: 
                  Container(
                    //Divider(),
                    //child: SizedBox(height: 10),
                    padding: EdgeInsets.all(10.0),
                    child: ElevatedButton(onPressed: _showDatePicker, child: Text("Seleccionar fecha"))
                  )
                )
             ],
          ),
          Text("$_dateTime".toString()),
          //espacio 
          Row(
            children: [
              Container(
                height: 30,
              )
            ],
          ),
          //correo
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Expanded(child: Container(
                 child: Text(
                   'Hora de la misa deseada',
                    textAlign: TextAlign.start ,
                    style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.black)),
               ))
             ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Expanded(child: 
                Container(
                  //padding: EdgeInsets.all(10.0),
                  child: DropdownButton<String>(
                    value: valor_horario,
                    isExpanded: false,
                    items: horarios.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() => this.valor_horario = value)
                  )
                )
               )
             ],
          ),
          Row(
            children: [
              Container(
                height: 30,
              )
            ],
          ),
          //correo
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Expanded(child: Container(
                 child: Text(
                   'Parroquia deseada',
                    textAlign: TextAlign.start ,
                    style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.black)),
               ))
             ],
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
          Row(
            children: [
              Container(
                height: 30,
              )
            ],
          ),
          //contraseña
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Expanded(child: Container(
                 child: Text(
                   'Nombre de la persona encomendada',
                    textAlign: TextAlign.start ,
                    style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.black)),
               ))
             ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Expanded(child: TextField(
                 controller: usuarioController,
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.blue, width: 2.0)
                   )
                 ),
               ))
             ],
          ), Row(
            children: [
              Container(
                height: 30,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){},
                child: const Text("Enviar datos"), 
              )
            ],
          )
        ],
      )
    ));
  }
}