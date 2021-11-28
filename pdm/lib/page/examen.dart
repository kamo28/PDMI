import 'package:flutter/material.dart';
import 'package:pdm/page/contacto_page.dart';
import 'package:pdm/page/donaciones_page.dart';
import 'package:pdm/page/solicitud_sacramentos.dart';
import 'package:pdm/widget/button_widget.dart';
import 'package:pdm/widget/navigation_drawer_widget.dart';

class Exam extends StatelessWidget {
  static final String title = 'Examen de conciencia';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.red),
        home: ExamenConciencia(),
      );
}

class ExamenConciencia extends StatefulWidget {
  @override
  _ExamenConcienciaState createState() => _ExamenConcienciaState();
}

class _ExamenConcienciaState extends State<ExamenConciencia> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(Exam.title),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //Botón de donaciones
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    child: Text("El sacramento de la penitencia o reconciliación",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    child: Text("Por voluntad de Cristo, la Iglesia posee el poder de perdonar los pecados de los bautizados y ella lo ejerce de forma habitual en el sacramento de la Penitencia por medio de los obispos y de los presbíteros. 'En la remisión de los pecados, los sacerdotes y los sacramentos son meros instrumentos de los que quiere servirse nuestro Señor Jesucristo, único autor y dispensador de nuestra salvación, para borrar nuestras iniquidades y darnos la gracia de la justificación' (Catech. R. 1,11,6).\n\nEn la tarde de la Pascua, el Señor Jesús se mostró a sus apóstoles y les dijo: 'Recibid el Espíritu Santo. A quienes perdonéis los pecados, les quedan perdonados; a quienes se los retengáis, les quedan retenidos' (Jn 20, 22-23).\n\nA los ojos de la fe, ningún mal es más grave que el pecado y nada tiene peores consecuencias para la Iglesia y para el mundo entero. Volver a la comunicación con Dios, después de haberla perdido por el pecado, es un mpvimiento que nace de la gracia de Dios, rico en misericordia y deseoso de la salvación de los hombres. Es preciso pedir este don precioso para sí mismo y para los demás. El movimiento de retorno a Dios, llamado conversión y arrepentimiento, implica un dolor y una aversión respecto a los pecados cometidos, y el propósito firme de no volver a pecar.",
                            style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    child: Text("Los actos del penitente:\n1. Examinar cuidadosamente su conciencia\n\n2. Arrepentimiento. Dolor de los pecados y propósito de enmienda. El arrepentimiento 'perfecto' llamado también contrinción, debe estar inspirado en motivaciones que brotan de la fe y el amor a Dios. Si el arrepentimiento está fundado en otros motivos se le llama 'imperfecto'. (Cfr. Catecismo de la Iglesia Católica Nos. 1451-1454)\n\n3. Confesión o manifestación de los pecados al sacerdote. El que quiere obtener la reconciliación con Dios y con la Iglesia debe confesar al sacerdote todos los pecados graves que recuerda y que no ha confesado. Debe decir el número de veces en caso de pecados graves. Está recomendada vivamente por la Iglesia la confesión de las faltas veniales o imperfecciones sin ser necesaria de hecho. (Cfr. Catecismo de la Iglesia Católica Nos. 1455-1458)\n\n4. Propósito de realizar la reparación y las obrasa de penitencia. La satisfacción, es decir, el cumplimiento de ciertos actos de penitencia, que el propio confesor impone al penitente para reparar el daño causado por el pecado. (Cfr. Catecismo de la Iglesia Católica Nos. 1459-1460)",
                           style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    child: Text("Los actos del confesor:\n1. Imponer al penitente el cumplimiento de ciertos actos de 'satisfacción' o de 'penitencia', para reparar el daño causado por el pecado y restablecer los hábitos propios del discípulo de Cristo.\n\n2. Dar la absolución al penitente", 
                           style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    child: Text("Efectos espirituales del sacramento de la Penitencia:\n- Reconciliación con Dios por la que el penitente recupera la gracia.\n- Reconciliación con la Iglesia.\n- Remisión de la pena eterna contraída por los pecados mortales.\n- Remisión parcial de las penas temporales, consecuencia del pecado.\n- Paz y serenidad de la conciencia y consuelo espiritual.\n- Acrecentamiento de las fuerzas espirituales para el combate cristiano.",
                           style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    child: Text("La confesión individual e íntegra de los pecados graves seguida de la absolución es el único medio ordinario para la reconciliación con Dios y con la Iglesia.\n\nMediante las indulgencias, los fieles pueden alcanzar para sí mismos y para las almas del Purgatorio la remisión de las penas temporales, consecuencia de los pecados. (Cfr. Catecismo de la Iglesia Católica No. 984-987 y 1485-1498)", 
                           style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
        )
      );
}
