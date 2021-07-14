import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  getUserByUsername(String username){
    return FirebaseFirestore.instance.collection("users").where("name", isEqualTo: username).get().then((doc) => {
      if(doc != null){}else{
        print("No Documents Received")
      }
    });
  }
  uploadUserInfo(userMap){
    FirebaseFirestore.instance.collection("users").add(userMap);
  }
}
