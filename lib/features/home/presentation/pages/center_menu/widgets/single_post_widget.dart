import 'package:facebookWebClone/features/home/presentation/pages/center_menu/widgets/on_hover.dart';
import 'package:facebookWebClone/features/home/presentation/pages/center_menu/widgets/on_hover_show_profile_widget.dart';
import 'package:facebookWebClone/features/home/presentation/pages/center_menu/widgets/on_hover_to_tool_tip_pop_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SinglePostWidget extends StatefulWidget {
  const SinglePostWidget({super.key});

  @override
  State<SinglePostWidget> createState() => _SinglePostWidgetState();
}

class _SinglePostWidgetState extends State<SinglePostWidget> {

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .357,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(.1), blurRadius: 2, spreadRadius: 1),
      ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const CircleAvatar(
                  maxRadius: 20,
                  backgroundColor: Colors.indigo,
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  OnHover(builder: (bool isHovered) {
                    return OnHoverToToolTipPopUp(
                      toolTipPopUpContent: const OnHoverShowProfileWidget(),
                      builder: (bool isHovered) {
                        return Text(
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          "Muhammad Nasir",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,decoration: isHovered?TextDecoration.underline:null),
                        );
                      },
                    );
                  },
                    
                  ),
                    Row(
                      children: [
                        OnHover(
                          builder: (isHovered) {
                            return Tooltip(
                              
                              height: 40,
                              verticalOffset: 10,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.8), borderRadius: BorderRadius.circular(10)),
                              showDuration: const Duration(microseconds: 500),
                              message: "Monday, 13 September at 6:20",
                              child: Text(
                                "2h",
                                style: TextStyle(fontSize: 12, decoration: isHovered ? TextDecoration.underline : null),
                              ),
                            );
                          },
                        ),
                        const Text(" - "),
                        const Icon(
                          CupertinoIcons.globe,
                          size: 15,
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    OnHover(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(.2),
                        ),
                        builder: (isHovered) {
                          return const Icon(Icons.more_horiz);
                        }),
                    const SizedBox(width: 5),
                    OnHover(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(.2),
                        ),
                        builder: (isHovered) {
                          return const Icon(Icons.close);
                        }),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
                'How do I solve this problem? After repeatedly entering the authentication code, the profile is not opening.'),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 400,
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("10"),
                Icon(Icons.message_outlined),
              ],
            ),
          ),
          const Divider(thickness: .3),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined),
                  Text("Like"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.message_outlined),
                  Text("Comment"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.share),
                  Text("Share"),
                ],
              ),
            ],
          ),
          const Divider(thickness: .3),
        ],
      ),
    );
  }
}
