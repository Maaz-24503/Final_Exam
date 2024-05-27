import 'package:flutter/material.dart';

class JobInfoBadge extends StatelessWidget {
  final String text;
  final bool isHighlighted;

  const JobInfoBadge(
      {super.key, required this.text, this.isHighlighted = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isHighlighted ? Colors.red : Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}