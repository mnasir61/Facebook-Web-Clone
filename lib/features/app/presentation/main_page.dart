
import 'package:facebookWebClone/features/game_page/presentation/pages/game_page.dart';
import 'package:facebookWebClone/features/groups_page/presentation/pages/groups_page.dart';
import 'package:facebookWebClone/features/home/presentation/pages/home_page.dart';
import 'package:facebookWebClone/features/market_place_page/presentation/pages/market_place_page.dart';
import 'package:facebookWebClone/features/video_page/presentation/pages/videos_page.dart';
import 'package:flutter/material.dart';

import 'widgets/app_bar_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  Widget selectedPage = const HomePage();

  void _onNavBarItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_selectedIndex) {
      case 0:
        selectedPage = const HomePage();
        break;
      case 1:
        selectedPage = const VideoPage();
        break;
      case 2:
        selectedPage = const MarketPlacePage();
        break;
      case 3:
        selectedPage = const GroupsPage();
        break;
      case 4:
        selectedPage = const GamePage();
        break;

    }
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              NavBarWidget(
                onNavBarItemTapped: _onNavBarItemTapped,
                selectedTabIndex: _selectedIndex,
              ),
              Expanded(child: selectedPage),
            ],
          ),
        ],
      ),
    );
  }
}
