import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';

import '../../utlis/app_images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/card_background.png'),
            fit: BoxFit.fill,
          ),
          color: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
                'Card Name',
                style: AppStyles.styleRegular16(context),
              ),
              subtitle:  Text(
                'Hashem Hassen',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery,),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '999 999 9999 99999',
                    style: AppStyles.styleMedium20(context),
                  ),
                  const SizedBox(height: 4,),
                  Text(
                    '12/20 -142',
                    style: AppStyles.styleRegular12(context),
                  )
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
