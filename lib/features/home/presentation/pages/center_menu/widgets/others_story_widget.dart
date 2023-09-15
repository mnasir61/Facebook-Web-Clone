
import 'package:flutter/material.dart';

class OthersStoryWidget extends StatefulWidget {
  const OthersStoryWidget({super.key});

  @override
  State<OthersStoryWidget> createState() => _OthersStoryWidgetState();
}

class _OthersStoryWidgetState extends State<OthersStoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 140,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: Colors.blue),
    );
  }
}
