import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/image_assets';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_item_list.dart';
import 'package:responsive_dashboard/widgets/list_tile_user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //! user info
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: ListTileUserInfo(
            subTitle: "Keroles Keroles",
            title: "Keroles Sami",
            icon: Assets.iconsAvatar1,
          ),
        ),

        //! items
        DrawerItemList(),
        Spacer(),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: DrawerItem(title: "Setting system", icon: Assets.iconsSetting),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, bottom: 48),
          child: DrawerItem(title: "Logout account", icon: Assets.iconsLogout),
        ),
      ],
    );
  }
}
