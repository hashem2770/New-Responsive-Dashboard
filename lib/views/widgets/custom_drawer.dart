import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/views/widgets/inactive_drawer_item.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';
import '../../models/user_info_list_tile_model.dart';
import '../../utlis/app_images.dart';
import 'main_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoListTileModel: UserInfoListTileModel(
                icon: Assets.imagesAvatar3,
                label: 'Lekan Okeowo',
                email: 'demo@gmail.com',
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          const MainDrawerItemsListView(),
          const SliverToBoxAdapter(child: SizedBox(height: 64)),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  drawerItem: DrawerItemModel(
                      icon: Assets.imagesSettings, label: 'Settings'),
                ),
                SizedBox(height: 20),
                InActiveDrawerItem(
                  drawerItem: DrawerItemModel(
                      icon: Assets.imagesLogout, label: 'Logout'),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
