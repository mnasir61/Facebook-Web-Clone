import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddStoryWidget extends StatefulWidget {
  const AddStoryWidget({super.key});

  @override
  State<AddStoryWidget> createState() => _AddStoryWidgetState();
}

class _AddStoryWidgetState extends State<AddStoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          width: 140,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: Colors.green),
        ),
        Container(
          height: 60,
          width: 140,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(13.5),
                bottomRight: Radius.circular(13.5),
              ),
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(.4), blurRadius: 1, spreadRadius: 1)]),
          child: const Center(
            child: Text(
              "Create Story",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 4),
              shape: BoxShape.circle,
            ),
            child: Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add,
                size: 26,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
