import 'package:appdev_final_exam/models/item_models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ItemsRepo {
  ItemsRepo._internal(); // Private constructor for singleton behavior

  static final ItemsRepo _instance =
      ItemsRepo._internal(); // Singleton instance

  factory ItemsRepo() {
    return _instance;
  }
  Future<List<MyCategory>> getItemsFromFirebase() async {
    QuerySnapshot qs =
        await FirebaseFirestore.instance.collection('items').get();
    List<MyCategory> tests =
        qs.docs.first['categories'].map<MyCategory>((item) {
      return MyCategory.fromJson(item);
    }).toList();
    return tests;
  }

  Future<List<Item>> getAllItemsFromFirebase() async {
    QuerySnapshot qs =
        await FirebaseFirestore.instance.collection('items').get();
    List<MyCategory> tests =
        qs.docs.first['categories'].map<MyCategory>((item) {
      return MyCategory.fromJson(item);
    }).toList();
    List<Item> toBeReturned = [];
    for (var temp in tests) {
      for (var sub in temp.subCategories) {
        for (var item in sub.items) {
          toBeReturned.add(item);
        }
      }
    }
    return toBeReturned;
  }
}
