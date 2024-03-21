import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'drawer_item.dart';


class MainDrawerItems extends StatelessWidget {
  const MainDrawerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
    );
  }
}
