import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screen/model/h_model.dart';

class FireBaseHelper {
  static FireBaseHelper base = FireBaseHelper._();

  FireBaseHelper._();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void insertData(HModel model) {
    firestore.collection("name").doc('name').collection("name_w").add({
      'name': model.name,
      'sacho': model.sacho,
      'date': model.date,
      'meter': model.meter,
      "total": model.total
    },);
    firestore.collection("no_of_worker").add({'no_of_worker':model.no_of_worker});
    print("hyy");
  }


  Stream<QuerySnapshot<Map<String, dynamic>>> readData()
  {
    return  firestore.collection("no_of_worker").snapshots();
  }
}
