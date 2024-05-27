import 'package:appdev_final_exam/components/my_card.dart';
import 'package:appdev_final_exam/models/item_models.dart';
import 'package:appdev_final_exam/providers/test_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FirstPage extends ConsumerWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Item>> prov = ref.watch(itemsProvider);
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: SearchBar(
                leading: Icon(Icons.search),
                hintText: 'Search by name',
              )),
            ],
          ),
        ),
        Expanded(
          child: prov.when(
            data: (value) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return MyCard(item: value[index], canPress: true,);
                },
                itemCount: value.length,
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => Center(child: Text(err.toString())),
          ),
        )
      ],
    )));
  }
}
