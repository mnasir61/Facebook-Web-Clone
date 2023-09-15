

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RightMenu extends StatefulWidget {
  const RightMenu({super.key});

  @override
  State<RightMenu> createState() => _RightMenuState();
}

class _RightMenuState extends State<RightMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _leftMenuIcon(icon: CupertinoIcons.profile_circled,label: "currentUsername"),
      ],
    );
  }

  _leftMenuIcon({required IconData icon,required String label}) {
    return Container(
      child: Row(
        children: [
          Icon(icon),
          Text(label)
        ],
      ),
    );
  }
}
