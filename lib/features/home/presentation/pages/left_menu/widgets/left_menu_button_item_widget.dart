

import 'package:flutter/material.dart';

class LeftMenuButtonItemWidgets extends StatelessWidget {
  final VoidCallback onTapCallBack;
  final IconData icon;
  final Color iconColor;
  final String label;
  const LeftMenuButtonItemWidgets({super.key, required this.onTapCallBack, required this.icon, required this.iconColor, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTapCallBack,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Icon(icon,color: iconColor,size: 30,),
            const SizedBox(width: 10),
            Text(label,style: const TextStyle(fontSize: 16),),
          ],

        ),
      ),
    );
  }
}