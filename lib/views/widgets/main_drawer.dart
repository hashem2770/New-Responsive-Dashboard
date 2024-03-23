import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'drawer_item.dart';

class MainDrawerItemsListView extends StatelessWidget {
  const MainDrawerItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var drawerItem = DrawerItemModel.drawerItems[index];
        return DrawerItem(
          drawerItem: drawerItem,
          isActive: true,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: DrawerItemModel.drawerItems.length,
    );
  }
}
