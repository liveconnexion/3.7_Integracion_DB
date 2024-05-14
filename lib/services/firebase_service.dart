import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getCatalogo() async {
  List catalogo = [];
  CollectionReference collectionReference = db.collection('catalogo');

  QuerySnapshot queryCatalogo = await collectionReference.get();
  queryCatalogo.docs.forEach((documento) {
    catalogo.add(documento.data());
  });

  return catalogo;
}
