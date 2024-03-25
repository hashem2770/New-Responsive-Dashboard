import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_expnses_item_model.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      //margin: const EdgeInsets.only(left: 8),
      decoration: buildBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // could be extracted into a widget
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: allExpensesItemModel.iconBackgroundColor,
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    allExpensesItemModel.imagePath,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: allExpensesItemModel.arrowIconColor,
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            allExpensesItemModel.label,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: allExpensesItemModel.labelColor,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "April 2024",
            style: AppStyles.styleRegular12(context),
          ),
        const Spacer(),
          Text(
            "\$ 5,000 ",
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: allExpensesItemModel.moneyColor,
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      color: allExpensesItemModel.cardColor,
      border: Border.all(color: Colors.grey.shade100, width: 2),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
