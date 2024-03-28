class TransactionHistoryModel {
  final String title;
  final String date;
  final String amount;

  TransactionHistoryModel({
    required this.title,
    required this.date,
    required this.amount,
  });

  static List<TransactionHistoryModel> transactionHistoryList = [
    TransactionHistoryModel(
      title: 'Groceries',
      date: '13 Apr,2024',
      amount: '- \$ 20.00',
    ),
    TransactionHistoryModel(
      title: 'Groceries',
      date: '13 Apr,2024',
      amount: '- \$ 20.00',
    ),
    TransactionHistoryModel(
      title: 'Groceries',
      date: '13 Apr,2024',
      amount: '- \$ 20.00',
    ),
  ];
}
