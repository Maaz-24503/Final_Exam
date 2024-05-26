import 'package:cloud_firestore/cloud_firestore.dart';

class TestRepo {
  TestRepo._internal(); // Private constructor for singleton behavior

  static final TestRepo _instance = TestRepo._internal(); // Singleton instance

  factory TestRepo() {
    return _instance;
  }
  Future<List<String>> getTestFromFirebase() async {
    QuerySnapshot qs =
        await FirebaseFirestore.instance.collection('testing').get();
    List<String> tests =
        qs.docs.first['items'].map<String>((doc) => doc as String).toList();
    return tests;
  }
}
