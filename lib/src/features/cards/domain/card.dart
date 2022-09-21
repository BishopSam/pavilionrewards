class CreditCardModel {
  final String cardNumber;
  final String cVV;
  final String expiryDate;
  final String cardHolderName;

  CreditCardModel(
      {this.cardNumber = '1234567890123456',
      this.cVV = '123',
      this.expiryDate = '12/34',
       this.cardHolderName = 'Janet M Doe'});
}
