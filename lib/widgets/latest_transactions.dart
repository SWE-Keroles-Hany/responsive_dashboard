import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/image_assets';
import 'package:responsive_dashboard/widgets/list_tile_user_info.dart';

class LatestTransactions extends StatelessWidget {
  LatestTransactions({super.key});

  final List<ListTileUserInfo> users = [
    ListTileUserInfo(
      icon: Assets.iconsAvatar1,
      title: "Keroles",
      subTitle: "keroles@example.com",
    ),
    ListTileUserInfo(
      icon: Assets.iconsAvatar1,
      title: "Ahmed",
      subTitle: "ahmed@example.com",
    ),
    ListTileUserInfo(
      icon: Assets.iconsAvatar1,
      title: "Fatima",
      subTitle: "fatima@example.com",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.separated(
        dragStartBehavior: DragStartBehavior.start,
        itemCount: users.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => IntrinsicWidth(child: users[index]),
        separatorBuilder: (context, index) => const SizedBox(width: 12),
      ),
    );
  }
}
