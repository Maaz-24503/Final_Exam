import 'package:appdev_final_exam/models/item_models.dart';
import 'package:appdev_final_exam/repositories/items_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_provider.g.dart';

@riverpod
Future<List<MyCategory>> test(TestRef ref) {
  return ItemService().getTest();
}

@riverpod
Future<List<Item>> items(ItemsRef ref) {
  return ItemService().getAllItems();
}

class ItemService {
  ItemService._internal(); // Private constructor for singleton behavior

  static final ItemService _instance =
      ItemService._internal(); // Singleton instance

  factory ItemService() {
    return _instance;
  }
  final ItemsRepo _itemsRepo = ItemsRepo();

  Future<List<MyCategory>> getTest() async {
    return await _itemsRepo.getItemsFromFirebase();
  }

  Future<List<Item>> getAllItems() async {
    return await _itemsRepo.getAllItemsFromFirebase();
  }
}

//dart run build_runner watch  (command to generate file)