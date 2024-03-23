import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/drawer_item_model.dart';
import '../../utlis/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItem,
  });

  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          drawerItem.icon,
        ),
        const SizedBox(
          width: 18,
        ),
        Text(
          drawerItem.label,
          style: AppStyles.styleSemiBold16(context).copyWith(
            fontWeight: FontWeight.w900,
            color: const Color(0xff0C359E),
          ),
        ),
      ],
    );
  }
}
