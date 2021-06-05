class Transaction {
  String id;
  String title;
  double amount;
  DateTime date;

  Transaction(
      {required this.title,
      required this.id,
      required this.amount,
      required this.date});
}
