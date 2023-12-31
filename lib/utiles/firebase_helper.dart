import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/screen/model/h_model.dart';

class FireBaseHelper {
  static FireBaseHelper base = FireBaseHelper._();

  FireBaseHelper._();

  FirebaseAuth auth = FirebaseAuth.instance;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String? id;

  bool chechUser() {
    User? user = auth.currentUser;
    return user != null;
  }

  Future<String> createUser(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "success";
    } catch (e) {
      return "$e";
    }
  }

  Future<String> signin(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return "success";
    } catch (e) {
      return "$e";
    }
  }

  Map<String, dynamic> userData() {
    User? user = auth.currentUser;
    var email = user!.email;


    return {"email": email, };
  }


  void insertData(HModel model) {
    firestore.collection("name").add(
      {
        'name': model.name,
        'sacho': model.sacho,
        'date': model.date,
        'meter': model.meter,
        "total": model.total
      },
    );
    print("hyy");
  }

  void workerData(HModel model) {
    firestore
        .collection("no_of_worker")
        .doc("$id")
        .collection("no_worker")
        .add({'no_of_worker': model.no_of_worker});
    firestore
        .collection("worker")
        .doc("$id")
        .collection("worker")
        .add({'no_of_worker': model.no_of_worker});
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> readData() {
    // return      firestore.collection("no_of_worker").doc("$id").collection("no_worker").snapshots();
    return firestore
        .collection("worker")
        .doc("$id")
        .collection("worker")
        .snapshots();
  }
}
