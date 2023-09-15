

import 'package:flutter/material.dart';

class OnHoverShowProfileWidget extends StatefulWidget {
  const OnHoverShowProfileWidget({super.key});

  @override
  State<OnHoverShowProfileWidget> createState() => _OnHoverShowProfileWidgetState();
}

class _OnHoverShowProfileWidgetState extends State<OnHoverShowProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              maxRadius: 40,
              backgroundColor: Colors.indigo,
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.18,
                  child: const Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    "Muhammad Nasir",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.18,
                  child: const Row(
                    children: [
                      Icon(Icons.people_alt_rounded),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            "38 mutual friends, including Saif khan and Wasaf ali"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.18,
                  child: const Row(
                    children: [
                      Icon(Icons.book_rounded),
                      SizedBox(width: 10),
                      Expanded(
                          child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              "Folloed by 89 people")),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Icon(Icons.person_2_outlined),
                  SizedBox(width: 10),
                  Text(
                    "Friends",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Message",
                    style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.more_horiz),
            ),
          ],
        ),
      ],
    );
  }
}
