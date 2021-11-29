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
                Container(////////////////////////////////////////////////////////////////////////
                  padding: EdgeInsets.all(25.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Agradecemos mucho su apoyo",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(/////////////////////////////////////////////////////////////////////////
                  padding: EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Contamos con 3 opciones para transferir lo que sea su voluntad\n",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("1.- Transferencia bancaria \nCuenta: BBVA Legionarios de Cristo, A.R.\nCuenta: 0111 77 1973\nClabe: 0121 8000 111 77 1973 5 \n\n2.- Via PayPal (tarjeta de crédito o débito)"),
                  ),
                ),
                Container(  ///////////////////////////////////////////////////////////
                  margin: EdgeInsets.all(15),
                  height: 70.0,
                  width: 200,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white38,
                    textColor: Colors.black,
                    child: 
                      Align(
                        alignment: Alignment.center, 
                        child: Text("\$20", style: TextStyle(fontSize: 34))
                      ),
                  ),
                ),
                Container(
                  child: Text("3.- Moneypool"),
                ),
                Container(  ///////////////////////////////////////////////////////////
                  margin: EdgeInsets.all(15),
                  height: 70.0,
                  width: 200,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white38,
                    textColor: Colors.black,
                    child: 
                      Align(
                        alignment: Alignment.center, 
                        child: Text("\$20", style: TextStyle(fontSize: 34))
                      ),
                  ),
                ),
              ],
            )
          )
        ),
      );
}
