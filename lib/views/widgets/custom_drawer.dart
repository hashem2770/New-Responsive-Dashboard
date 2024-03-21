import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';
import '../../models/drawer_item_model.dart';
import '../../models/user_info_list_tile_model.dart';
import '../../utlis/app_images.dart';
import 'drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            userInfoListTileModel: UserInfoListTileModel(
              icon: Assets.imagesAvatar3,
              label: 'Lekan Okeowo',
              email: 'demo@gmail.com',
            ),
          ),
          const SizedBox(height: 20),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var drawerItem = DrawerItemModel.getDrawerItems[index];
              return DrawerItem(drawerItem: drawerItem);
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 18,
            ),
            itemCount: DrawerItemModel.getDrawerItems.length,
          ),
        ],
      ),
    );
  }
}
