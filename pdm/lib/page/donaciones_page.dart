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
                  padding: EdgeInsets.all(50.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Agradecemos mucho su apoyo",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(/////////////////////////////////////////////////////////////////////////
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Seleccione su aportación",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(  ///////////////////////////////////////////////////////////
                  margin: EdgeInsets.all(30),
                  height: 100.0,
                  width: 200,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                    ),
                    onPressed: () {
                      /* Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => PaypalPayment(
                          onFinish: (number) async {
                            // payment done
                            print('order id: ' + number);
                          },
                        ),
                      ),
                    ); */
                    },
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
                Container(  ///////////////////////////////////////////////////////////
                  margin: EdgeInsets.all(5),
                  height: 100.0,
                  width: 200,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                    ),
                    onPressed: () {
                      /* Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => PaypalPayment(
                          onFinish: (number) async {
                            // payment done
                            print('order id: ' + number);
                          },
                        ),
                      ),
                    ); */
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white38,
                    textColor: Colors.black,
                    child: 
                      Align(
                        alignment: Alignment.center, 
                        child: Text("\$50", style: TextStyle(fontSize: 34))
                      ),
                  ),
                ),
                Container(  ///////////////////////////////////////////////////////////
                  margin: EdgeInsets.all(30),
                  height: 100.0,
                  width: 200,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                    ),
                    onPressed: () {
                      /* Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => PaypalPayment(
                          onFinish: (number) async {
                            // payment done
                            print('order id: ' + number);
                          },
                        ),
                      ),
                    ); */
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white38,
                    textColor: Colors.black,
                    child: 
                      Align(
                        alignment: Alignment.center, 
                        child: Text("\$50", style: TextStyle(fontSize: 34))
                      ),
                  ),
                ),
              ],
            )
          )
        ),
      );
}
