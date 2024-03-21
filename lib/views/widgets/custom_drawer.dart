import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';
import '../../models/user_info_list_tile_model.dart';
import '../../utlis/app_images.dart';
import 'main_drawer.dart';

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
          const MainDrawerItems(),
        ],
      ),
    );
  }
}
