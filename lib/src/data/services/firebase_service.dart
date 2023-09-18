import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getNotes() async {
  List people = [];
  CollectionReference collectionReferenceNotes = db.collection('notes');
  QuerySnapshot queryNotes = await collectionReferenceNotes.get();
  for (var element in queryNotes.docs) {
    people.add(element.data());
  }
  return people;
}

test() {
  // Sirve para checar las opciones que se tienen del CollectionReference despues del punto
  // db.collection('notes').;
}
