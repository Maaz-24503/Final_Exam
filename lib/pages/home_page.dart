import 'package:appdev_final_exam/providers/test_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<String>> prov = ref.watch(testProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test page"),
          backgroundColor: const Color.fromARGB(255, 145, 59, 250),
        ),
        body: prov.when(
          data: (value) => ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(value[index]),
              );
            },
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(child: Text(err.toString())),
        ));
  }
}
