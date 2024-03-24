import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_expnses_item_model.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 18),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: allExpensesItemModel.cardColor,
        border: Border.all(color: Colors.grey.shade100, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          const SizedBox(
            height: 28,
          ),
          Text(
            allExpensesItemModel.label,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: allExpensesItemModel.labelColor,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "April 2024",
            style: AppStyles.styleRegular12(context),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "\$ 5,000 ",
            style: AppStyles.styleSemiBold24(context).copyWith(
              color: allExpensesItemModel.moneyColor,
            ),
          ),
        ],
      ),
    );
  }
}
