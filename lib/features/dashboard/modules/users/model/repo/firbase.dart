import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:section_project/features/dashboard/modules/users/model/repo/parnet_data.dart';
import 'package:section_project/features/dashboard/modules/users/model/user_model.dart';

class FirebaseRepo extends P_Repositry {
  static FirebaseRepo instance = FirebaseRepo._init();

  FirebaseRepo._init();

  @override
  Future<List<UModel>> fetch_data() async {
    /// https://firebase.flutter.dev/docs/firestore/usage
    return await FirebaseFirestore.instance.collection('users').get().then((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((e) {
        final Map data = e.data() as Map;

        Map map = {
          'name': data.containsKey('name') ? data['name'] : "XX",
          'address': data.containsKey('adress') ? data['address'] : "XXXX",
          'id': e.reference.id,
        };
        return UModel.fromJson(map);
      }).toList();
    });
  }

  @override
  Future<void> delete_data({required int id}) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.doc(id.toString()).update({'company': 'Stokes and Sons'}).then((_) => print("User Updated"));
    
  }

  @override
  Future<void> insert_data({required String name, String? address}) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users
        .add({
          'full_name': name, 
          'address': address, 
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}