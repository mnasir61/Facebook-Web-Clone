

import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.1),
      body: Column(
        children: [
          Text("Game Page")
        ],
      ),
    );
  }
}
