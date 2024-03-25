import '../utlis/app_images.dart';

class LatestTransactionModel {
  late String name;
  late String email;
  late String avatar;

  LatestTransactionModel({
    required this.name,
    required this.email,
    required this.avatar,
  });

  static List<LatestTransactionModel>  latestTransactions = [
    LatestTransactionModel(
      name: 'John Doe',
      email: 'jdoe@gamil.com',
      avatar: Assets.imagesAvatar1,
    ),
    LatestTransactionModel(
      name: 'John Doe',
      email: 'jdoe@me.com',
      avatar: Assets.imagesAvatar2,
    ),
    LatestTransactionModel(
      name: 'John Doe',
      email: 'jdoe@me.com',
      avatar: Assets.imagesAvatar3,
    ),
  ];
}