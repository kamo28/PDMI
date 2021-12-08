import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_donation_buttons/flutter_donation_buttons.dart';

class DonacionesPage extends StatelessWidget {
  openURLMoneyPool(){
    String url_moneypool = "https://www.moneypool.mx/limosna";
    launch(url_moneypool);
  }

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
                    child: Text("1.- Transferencia bancaria \nCuenta: BBVA Legionarios de Cristo, A.R.\nCuenta: 0111 77 1973\nClabe: 0121 8000 111 77 1973 5 \n\n\n\n2.- Via PayPal (tarjeta de crédito o débito)"),
                  ),
                ),
                PayPalButton(
                  paypalButtonId: "3XG9P3KW83XT2",
                  donationText: "Donar con PayPal",
                ),
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("\n\n\n3.- Moneypool (pagos y donaciones digitales)"),
                  ),
                ),
                Container(  ///////////////////////////////////////////////////////////
                  margin: EdgeInsets.all(15),
                  height: 50.0,
                  width: 160,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                    ),
                    onPressed: openURLMoneyPool,
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white38,
                    textColor: Colors.black,
                    child: 
                      Align(
                        alignment: Alignment.center,
                        child: Text("Moneypool", style: TextStyle(fontSize: 24)
                      ),
                    ),
                  ),
                ),
              ],
            )
          )
        ),
      );
}
