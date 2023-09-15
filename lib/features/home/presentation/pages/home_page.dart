


import 'package:facebookWebClone/features/home/presentation/pages/center_menu/center_menu.dart';
import 'package:facebookWebClone/features/home/presentation/pages/left_menu/left_menu.dart';
import 'package:flutter/material.dart';

import 'right_menu/right_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.1),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 3,child: SingleChildScrollView(child: LeftMenu())),
            Expanded(flex: 8,child: SingleChildScrollView(child: CenterMenu())),
            Expanded(flex: 3,child: SingleChildScrollView(child: RightMenu())),
          ],
        ),
      ),
    );
  }
}
