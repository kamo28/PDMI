import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';

class DatabaseI {
  late FirebaseFirestore firestore;
  initiliase() {
    firestore = FirebaseFirestore.instance;
  }

  Future<void> create(String fecha, String hora, String parroquia, String nombre_persona) async {
    try {
      await firestore.collection("intenciones").add({
        'fecha': fecha,
        'hora': hora,
        'parroquia':parroquia,
        'nombre_persona':nombre_persona,
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> delete(String id) async {
    try {
      await firestore.collection("countries").doc(id).delete();
    } catch (e) {
      print(e);
    }
  }

  Future<List> read() async {
    QuerySnapshot querySnapshot;
    List docs = [];
    try {
      querySnapshot =
          await firestore.collection('intenciones').orderBy('fecha').get();
      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs.toList()) {
          Map a = {"id": doc.id, "fecha": doc['fecha'], "hora": doc["hora"], "parroquia": doc["parroquia"], "nombre_persona": doc["nombre_persona"]};
          docs.add(a);
        }
        return docs;
      }
    } catch (e) {
      print(e);
    }
    return read();
  }

  Future<void> update(String id, String fecha, String hora, String parroquia, String nombre) async {
    try {
      await firestore
          .collection("intenciones")
          .doc(id)
          .update({'fecha': fecha, 'hora': hora, 'parroquia': parroquia, 'nombre_persona':nombre});
    } catch (e) {
      print(e);
    }
  }
}