import 'package:appdev_final_exam/models/item_models.dart';
import 'package:appdev_final_exam/pages/sub_categories_page.dart';
import 'package:flutter/material.dart';

class SubTile extends StatelessWidget {
  final SubCategory subCategory;
  const SubTile({super.key, required this.subCategory});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    SubCategoriesPage(subCategory: subCategory)));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          tileColor: const Color.fromARGB(255, 179, 223, 240),
          title: Text(subCategory.name),
          subtitle: Text(subCategory.category),
        ),
      ),
    );
  }
}
