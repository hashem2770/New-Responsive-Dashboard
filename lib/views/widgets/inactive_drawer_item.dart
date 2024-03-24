import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/drawer_item_model.dart';
import '../../utlis/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItem,
  });

  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            drawerItem.icon,
          ),
          const SizedBox(
            width: 18,
          ),
          Text(
            drawerItem.label,
            style: AppStyles.styleMedium16(context),
          ),
        ],
      ),
    );
  }
}
