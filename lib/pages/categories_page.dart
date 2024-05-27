import 'package:appdev_final_exam/components/sub_tile.dart';
import 'package:appdev_final_exam/models/item_models.dart';
import 'package:appdev_final_exam/providers/test_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesPage extends ConsumerWidget {
  final String category;
  const CategoriesPage({super.key, required this.category});

  MyCategory? getCategory(List<MyCategory> arr) {
    for (var cat in arr) {
      if (cat.name == category) {
        return cat;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<MyCategory>> prov = ref.watch(testProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(category),
          centerTitle: true,
        ),
        body: prov.when(
          data: (value) {
            final myCategory = getCategory(value);
            return ListView.builder(
              itemBuilder: ((context, index) =>
                  SubTile(subCategory: myCategory!.subCategories[index])),
              itemCount: myCategory?.subCategories.length,
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(child: Text(err.toString())),
        ),
      ),
    );
  }
}
