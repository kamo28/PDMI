import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'dart:io';

class ContactoPage extends StatelessWidget {
  enviarSMS(String msj, List<String> d) async {
    String r = await sendSMS(message: msj, recipients: d).catchError((onError) {
      print(onError);
    });
    print(r);
  }

  hacerLlamada() async {
    const url = 'tel:+525587920511';
    if (await canLaunch(url)) {
      await launch(url);
    }else{
      throw 'error al llamar la $url';
    }
  }

  openwhatsapp(String message, String destinatario) async {
    var whatsapp = destinatario;
    var whatsappURl_android =
        "whatsapp://send?phone=" + whatsapp + "&text=" + message;
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse(message)}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        try {
          launch(whatappURL_ios, forceSafariVC: false);
        }
        catch (e)
        {
          print(e);
          print("WhatsApp no instalado");
          // although the exception occurs, this never happens, and I would rather catch the exact canLaunch exception
        }
      }
    } else {
      // android , web
      print(whatsappURl_android);
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        try {
          launch(whatsappURl_android);
        }
        catch (e)
        {
          print(e);
          print("WhatsApp no instalado");
          // although the exception occurs, this never happens, and I would rather catch the exact canLaunch exception
        }
      }
    }
  }


  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Contacto'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body:Builder(
          builder: (context) => Center(
            child: new Column(
              children: <Widget>[
                Container(  ///////////////////////////////////////////////////////////
                  margin: EdgeInsets.all(10),
                  height: 100.0,
                  width: 250,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                    ),
                    onPressed: hacerLlamada,
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white38,
                    textColor: Colors.black,
                    child: 
                      Align(
                        alignment: Alignment.centerLeft, 
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: "Teléfono          ", style: TextStyle(fontSize: 26, color: Colors.black)),
                              WidgetSpan(child: Icon(Icons.phone, size: 50))
                            ]
                          )
                        ),
                      ),
                  ),
                ),
                Container(  ///////////////////////////////////////////////////////////
                  margin: EdgeInsets.all(10),
                  height: 100.0,
                  width: 250,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                    ),
                    onPressed: (){
                      String msj = "¡Quiero acercarme a Dios!";
                      List<String> d = ["+52 1 5587920511"];
                      enviarSMS(msj, d);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white38,
                    textColor: Colors.black,
                    child: 
                      Align(
                        alignment: Alignment.centerLeft, 
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: "Mensaje de texto   ", style: TextStyle(fontSize: 20, color: Colors.black)),
                              WidgetSpan(child: Icon(Icons.message, size: 40))
                            ]
                          )
                        ),
                      ),
                  ),
                ),
                Container(  ///////////////////////////////////////////////////////////
                  margin: EdgeInsets.all(10),
                  height: 100.0,
                  width: 250,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                    ),
                    onPressed: () {
                      String mensaje = "¡Quiero acercarme a Dios!";
                      String destinatario = "+52 1 5587920511";
                      openwhatsapp(mensaje, destinatario);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white38,
                    textColor: Colors.black,
                    child: 
                      Align(
                        alignment: Alignment.centerLeft, 
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: "WhatsApp     ", style: TextStyle(fontSize: 26, color: Colors.black)),
                              WidgetSpan(child: Icon(Icons.messenger_rounded, size: 55))
                            ]
                          )
                        ),
                      ),
                  ),
                ),
              ],
            ),
          ),
        )
      );
}
