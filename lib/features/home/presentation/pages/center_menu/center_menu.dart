import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/add_post_widget.dart';
import 'widgets/add_story_widget.dart';
import 'widgets/others_story_widget.dart';
import 'widgets/single_post_widget.dart';

class CenterMenu extends StatefulWidget {
  const CenterMenu({super.key});

  @override
  State<CenterMenu> createState() => _CenterMenuState();
}

class _CenterMenuState extends State<CenterMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 15),
        SizedBox(
          width: MediaQuery.of(context).size.width * .439,
          height: 240,
          child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const AddStoryWidget();
                }
                return const OthersStoryWidget();
              }),
        ),
        const SizedBox(height: 10),
        const AddPostWidget(),
        const SizedBox(height: 10),
        const SinglePostWidget(),
      ],
    );
  }
}
