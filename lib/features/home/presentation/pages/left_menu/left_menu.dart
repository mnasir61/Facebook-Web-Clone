import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/left_menu_button_item_widget.dart';

class LeftMenu extends StatefulWidget {
  const LeftMenu({super.key});

  @override
  State<LeftMenu> createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {
  bool showAllButtons = false;

  @override
  Widget build(BuildContext context) {
    final List<Widget> buttonItems = [
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
      LeftMenuButtonItemWidgets(
          onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "Friends", iconColor: Colors.blue),
    ];
    final firstTenButtons = buttonItems.sublist(0, 7);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Row(children: [
              Container(
                height: 28,
                width: 28,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                "M.Nasir",
                style: TextStyle(fontSize: 16),
              ),
            ]),
          ),
        ),
        if (showAllButtons == true)
          Column(
            children: [...buttonItems, _toggleButton()],
          ),
        if (showAllButtons == false)
          Column(
            children: [...firstTenButtons, _toggleButton()],
          ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                thickness: .1,
                color: Colors.grey,
              ),
              Text(
                "Your Shortcuts",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
        ),
        LeftMenuButtonItemWidgets(
            onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "8 Ball Pool", iconColor: Colors.blue),
        LeftMenuButtonItemWidgets(
            onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "8 Ball Pool", iconColor: Colors.blue),
        LeftMenuButtonItemWidgets(
            onTapCallBack: () {}, icon: CupertinoIcons.profile_circled, label: "8 Ball Pool", iconColor: Colors.blue),
      ],
    );
  }

  Widget _toggleButton() {
    final buttonText = showAllButtons ? "Hide" : "Show More";
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        setState(() {
          showAllButtons = !showAllButtons;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(.3), shape: BoxShape.circle),
              child: Icon(
                showAllButtons == true ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                size: 30,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              buttonText,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
