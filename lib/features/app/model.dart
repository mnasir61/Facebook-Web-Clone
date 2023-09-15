


import 'package:flutter/material.dart';

class ItemsData {
  final String toolTipMessage;
  final IconData icon;

  ItemsData({required this.toolTipMessage, required this.icon});

  static List<ItemsData> itemDataList = [
    ItemsData(toolTipMessage: "Home", icon: Icons.home),
    ItemsData(toolTipMessage: "Videos", icon:Icons.video_camera_back),
    ItemsData(toolTipMessage: "MarketPlace", icon: Icons.storefront_outlined),
    ItemsData(toolTipMessage: "Groups", icon: Icons.people_alt_outlined),
    ItemsData(toolTipMessage: "Games", icon: Icons.gamepad_outlined),
  ];
}