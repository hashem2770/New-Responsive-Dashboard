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
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        children: [
          SvgPicture.asset(
            drawerItem.icon,
          ),
          const SizedBox(
            width: 14,
          ),
          Text(
            drawerItem.label,
            maxLines: 1,
            textAlign:TextAlign.left,
            style: AppStyles.styleSemiBold16(context).copyWith(
              fontWeight: FontWeight.w900,
              color: const Color(0xff0C359E),
              overflow: TextOverflow.ellipsis,

            ),
          ),
          //todo: did not appear in the screen while development
          const VerticalDivider(
            color: Colors.blue,
            thickness: 2,
            width: 4,
          ),
        ],
      ),
    );
  }
}
