import 'package:appdev_final_exam/models/item_models.dart';
import 'package:appdev_final_exam/pages/categories_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCard extends StatelessWidget {
  final Item item;
  final bool canPress;
  const MyCard({super.key, required this.item, required this.canPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: canPress
          ? () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CategoriesPage(category: item.category)));
            }
          : () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: const Color.fromARGB(255, 238, 237, 235),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 240, 224, 179),
                          child: Image.network(item.imagePath),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          item.itemName,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: const Color.fromARGB(255, 187, 252, 102)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            "Finished",
                            style: TextStyle(
                                color: Color.fromARGB(255, 1, 124, 5)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(item.category),
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.comment,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5),
                          child: Text("View Reviews"),
                        )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0, right:12),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.orange,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5),
                            child: Center(
                              child: Text(
                                "Buy Again",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )),
                    ),
                  )
                ])
              ],
            )),
      ),
    );
  }
}
