import 'package:facebookWebClone/features/home/presentation/pages/center_menu/widgets/on_hover.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPostWidget extends StatefulWidget {
  const AddPostWidget({super.key});

  @override
  State<AddPostWidget> createState() => _AddPostWidgetState();
}

class _AddPostWidgetState extends State<AddPostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .357,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(.1), blurRadius: 2, spreadRadius: 1),
      ]),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                maxRadius: 20,
                backgroundColor: Colors.blue,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.withOpacity(.15),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "What's on your mind, Muhammad",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20)
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            thickness: .3,
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AddPostItemWidget(
                onTapCallBack: () {},
                iconColor: Colors.red,
                icon: Icons.video_camera_back,
                label: "Live video",
              ),
              AddPostItemWidget(
                onTapCallBack: () {},
                iconColor: Colors.green,
                icon: CupertinoIcons.photo_on_rectangle,
                label: "Photo/video",
              ),
              AddPostItemWidget(
                onTapCallBack: () {},
                iconColor: Colors.orange,
                icon: Icons.emoji_emotions_outlined,
                label: "Feeling/activity",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AddPostItemWidget extends StatefulWidget {
  final VoidCallback onTapCallBack;
  final IconData icon;
  final Color iconColor;
  final String label;

  const AddPostItemWidget(
      {super.key, required this.onTapCallBack, required this.icon, required this.iconColor, required this.label});

  @override
  State<AddPostItemWidget> createState() => _AddPostItemWidgetState();
}

class _AddPostItemWidgetState extends State<AddPostItemWidget> {
  @override
  Widget build(BuildContext context) {
    return OnHover(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(.2),
      ),
      builder: (bool isHovered) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Icon(
                widget.icon,
                color: widget.iconColor,
                size: 30,
              ),
              const SizedBox(width: 10),
              Text(
                widget.label,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        );
      },
    );
  }
}
