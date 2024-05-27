import 'package:appdev_final_exam/components/my_card.dart';
import 'package:appdev_final_exam/models/item_models.dart';
import 'package:flutter/material.dart';

class SubCategoriesPage extends StatelessWidget {
  final SubCategory subCategory;
  const SubCategoriesPage({super.key, required this.subCategory});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(subCategory.name),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, idx) => MyCard(
          item: subCategory.items[idx],
          canPress: false,
        ),
        itemCount: subCategory.items.length,
      ),
    ));
  }
}
