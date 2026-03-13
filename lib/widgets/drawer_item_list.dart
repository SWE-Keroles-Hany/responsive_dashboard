import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/image_assets';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({super.key});

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  List<DrawerItem> get drawerItems => [
    DrawerItem(title: "Dashboard", icon: Assets.iconsCategory),
    DrawerItem(title: "My Transaction", icon: Assets.iconsConvertCard),
    DrawerItem(title: "Statistics", icon: Assets.iconsStatistics),
    DrawerItem(title: "Wallet Account", icon: Assets.iconsWallet),
    DrawerItem(title: "My Investments", icon: Assets.iconsChart),
  ];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (selectedItem != index) {
            setState(() {
              selectedItem = index;
            });
          }
        },
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: DrawerItem(
            title: drawerItems[index].title,
            icon: drawerItems[index].icon,
            isActive: selectedItem == index,
          ),
        ),
      ),
    );
  }
}
