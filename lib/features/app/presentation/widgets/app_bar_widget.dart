
import 'package:facebookWebClone/features/global/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarWidget extends StatefulWidget {
  final int? selectedTabIndex;
  final Function(int)? onNavBarItemTapped;

  const NavBarWidget({
    super.key,
    this.selectedTabIndex,
    this.onNavBarItemTapped,
  });

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> with SingleTickerProviderStateMixin {
  int selectedTabIndex = 0;

  void _onNavBarItemTapped(int index) {
    setState(() {
      selectedTabIndex = index;
    });
    widget.onNavBarItemTapped!(index);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => _desktopNavBar(),
      mobile: (context) => _mobileNabBar(),
    );
  }

  Widget _desktopNavBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(height: 50, width: 50, child: Image.network(facebookLogo)),
              const SizedBox(width: 15),
              Container(
                width: MediaQuery.of(context).size.width * .2,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[200]),
                child: TextFormField(
                  decoration: const InputDecoration(border: InputBorder.none, hintText: "Search Facebook"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              buildNavBarButton(tooltipMessage: "Home", icon: Icons.home, index: 0),
              buildNavBarButton(tooltipMessage: "Videos", icon: Icons.video_camera_back_outlined, index: 1),
              buildNavBarButton(tooltipMessage: "MarketPlace", icon: Icons.storefront, index: 2),
              buildNavBarButton(tooltipMessage: "Groups", icon: Icons.people_alt_outlined, index: 3),
              buildNavBarButton(tooltipMessage: "Games", icon: Icons.videogame_asset, index: 4),
            ],
          ),
          Row(
            children: [
              _navBarItem(
                onTapCallBack: () {},
                icon: Icons.menu,
                toolTipMessage: "Menu",
              ),
              _navBarItem(onTapCallBack: () {}, icon: Icons.message_outlined, toolTipMessage: "Message"),
              _navBarItem(
                  onTapCallBack: () {}, icon: Icons.notifications_active_outlined, toolTipMessage: "Notifications"),
              _navBarItem(onTapCallBack: () {}, icon: Icons.person, toolTipMessage: "Account"),
            ],
          ),
        ],
      ),
    );
  }

  _navBarItem({VoidCallback? onTapCallBack, IconData? icon, String? toolTipMessage}) {
    return Tooltip(
      decoration: BoxDecoration(color: Colors.black.withOpacity(.8), borderRadius: BorderRadius.circular(10)),
      showDuration: const Duration(microseconds: 500),
      message: toolTipMessage,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        height: 40,
        width: 40,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.grey[300]),
        child: IconButton(icon: Icon(icon), onPressed: onTapCallBack),
      ),
    );
  }

  Widget buildNavBarButton({required int index, required IconData icon, required String tooltipMessage}) {
    final isSelected = index == selectedTabIndex;
    final color = isSelected ? Colors.blue : Colors.grey;
    final container = isSelected
        ? Container(
            height: 3,
            width: 75,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
          )
        : Container();
    return Tooltip(
     margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(color: Colors.black.withOpacity(.8), borderRadius: BorderRadius.circular(10)),
      showDuration: const Duration(microseconds: 500),
      message: tooltipMessage,
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Column(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () => _onNavBarItemTapped(index),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child: Icon(
                  icon,
                  color: color,
                  size: 30,
                ),
              ),
            ),
            container
          ],
        ),
      ),
    );
  }

//==================Mobile View ================//
  Widget _mobileNabBar() {
    return Row(
      children: [
        SizedBox(height: 50, width: 50, child: Image.network(facebookLogo)),
      ],
    );
  }
}
