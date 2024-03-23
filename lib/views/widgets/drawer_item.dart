import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'active_drawer_item.dart';
import 'inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItem,
    required this.isActive,
  });

  final DrawerItemModel drawerItem;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItem: drawerItem)
        : InActiveDrawerItem(drawerItem: drawerItem);
  }
}
