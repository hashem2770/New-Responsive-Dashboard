import '../utlis/app_images.dart';

class DrawerItemModel {
  final String label;
  final String icon;

  const DrawerItemModel({
    required this.label,
    required this.icon,
  });

  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      label: 'My Dashboard',
      icon: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      label: 'My Transactions',
      icon: Assets.imagesMyTransctions,
    ),
    DrawerItemModel(
      label: 'My Statistics     ',
      icon: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      label: 'Wallet Account',
      icon: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      label: 'My Investments',
      icon: Assets.imagesMyInvestments,
    ),
  ];
}
