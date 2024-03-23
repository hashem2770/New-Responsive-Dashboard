import 'dart:developer';

import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'drawer_item.dart';

class MainDrawerItemsListView extends StatefulWidget {
  const MainDrawerItemsListView({
    super.key,
  });

  @override
  State<MainDrawerItemsListView> createState() => _MainDrawerItemsListViewState();
}

class _MainDrawerItemsListViewState extends State<MainDrawerItemsListView> {

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var drawerItem = DrawerItemModel.drawerItems[index];
        return InkWell(
          onTap: () {
            // if condition to avoid multiple set state
            if(activeIndex != index){
              setState(() {
                activeIndex = index;
                log(activeIndex.toString());
              });
            }
          },
          child: DrawerItem(
            drawerItem: drawerItem,
            isActive: activeIndex == index,
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: DrawerItemModel.drawerItems.length,
    );
  }
}
