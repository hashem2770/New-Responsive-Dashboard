import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/user_info_list_tile_model.dart';
import '../../utlis/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoListTileModel, });
 final UserInfoListTileModel userInfoListTileModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(
        userInfoListTileModel.icon,
        ),
        title:  Text(
          userInfoListTileModel.label,
          style: AppStyles.styleSemiBold16(context),

        ),
        subtitle: Text(
          userInfoListTileModel.email,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
