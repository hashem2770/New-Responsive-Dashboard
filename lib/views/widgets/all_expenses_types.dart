import 'package:flutter/material.dart';

import '../../models/all_expnses_item_model.dart';
import '../../utlis/app_images.dart';
import 'all_expnses_item.dart';

class AllExpensesTypes extends StatefulWidget {
  const AllExpensesTypes({
    super.key,
  });

  @override
  State<AllExpensesTypes> createState() => _AllExpensesTypesState();
}

class _AllExpensesTypesState extends State<AllExpensesTypes> {
  int selectedIndex = -1; // Track the currently selected index
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        // could be refactor by making Expandeds in list and iterate over them by :
        // list.asMap().entries.map((e) => Expanded(...)).toList()
        // e.key will give the index in order to make the middle widget padding
        children: [
          // Balance Widget
          Expanded(
            child: InkWell(
              onTap: () => setState(() => selectedIndex = 0),
              child: AllExpensesItem(
                allExpensesItemModel:
                    buildAllExpensesBalanceItem(isSelected: selectedIndex == 0),
              ),
            ),
          ),
          // Income Widget
          Expanded(
            child: InkWell(
              onTap: () => setState(() => selectedIndex = 1),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: AllExpensesItem(
                  allExpensesItemModel:
                      buildAllExpensesIncomeItem(isSelected: selectedIndex == 1),
                ),
              ),
            ),
          ),
          // Expenses Widget
          Expanded(
            child: InkWell(
              onTap: () => setState(() => selectedIndex = 2),
              child: AllExpensesItem(
                allExpensesItemModel: buildAllExpensesExpensesItem(
                    isSelected: selectedIndex == 2),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AllExpensesItemModel buildAllExpensesBalanceItem({required bool isSelected}) {
    return AllExpensesItemModel(
      label: 'Balance',
      arrowIconColor: isSelected ? Colors.white70 : Colors.grey,
      cardColor: isSelected ? Colors.blue.withOpacity(0.8) : Colors.white,
      imagePath: Assets.imagesBalance,
      iconBackgroundColor: Colors.grey.shade200,
      moneyColor: isSelected ? Colors.white : Colors.blue,
      labelColor: isSelected ? Colors.white : Colors.blue,
    );
  }

  AllExpensesItemModel buildAllExpensesExpensesItem(
      {required bool isSelected}) {
    return AllExpensesItemModel(
      label: 'Expenses',
      arrowIconColor: isSelected ? Colors.white70 : Colors.grey,
      cardColor: isSelected ? Colors.blue.withOpacity(0.8) : Colors.white,
      imagePath: Assets.imagesExpenses,
      iconBackgroundColor: Colors.grey.shade200,
      moneyColor: isSelected ? Colors.white : Colors.blue,
      labelColor: isSelected ? Colors.white : Colors.blue,
    );
  }

  AllExpensesItemModel buildAllExpensesIncomeItem({required bool isSelected}) {
    return AllExpensesItemModel(
      label: 'Income',
      arrowIconColor: isSelected ? Colors.white70 : Colors.grey,
      cardColor: isSelected ? Colors.blue.withOpacity(0.8) : Colors.white,
      imagePath: Assets.imagesIncome,
      iconBackgroundColor: Colors.grey.shade200,
      moneyColor: isSelected ? Colors.white : Colors.blue,
      labelColor: isSelected ? Colors.white : Colors.blue,
    );
  }
}
