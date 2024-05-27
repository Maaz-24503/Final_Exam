import 'package:appdev_final_exam/components/my_button.dart';
import 'package:appdev_final_exam/pages/first_page.dart';
import 'package:appdev_final_exam/pages/second_page.dart';
import 'package:flutter/material.dart';

class DecisionPage extends StatelessWidget {
  const DecisionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Maaz Karim Final Exam'),
        centerTitle: true,
      ),
      body: Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PurpleButton(
                text: 'Question 1',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FirstPage()));
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PurpleButton(
                text: 'Question 2',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage()));
                }),
          )
        ],
      )),
    ));
  }
}
