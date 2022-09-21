class Payment {
  final String paymentTitle, paymentDate, paymentTime, paymentPoints;
  final bool isProfit;

  Payment(
      {required this.paymentTitle,
      required this.isProfit, 
      required this.paymentDate,
      required this.paymentTime,
      required this.paymentPoints});
}
