

class TPricingCalculator{

  /// -- calaculate price based on the tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice + taxRate;

    double shippingCost = getShippingCost(location);
    
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate shipping cost
  static String calculateShippingCoast(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    return 0.10; //Exemple tax rate of 10%
  }

  /// --
  static double getShippingCost(String location){
    return 5.00;
  }

  /// -- Sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart){
  //   return cart.items.map((e) => e.prise).fold(0, (previousPrice, currentPrise) => previousprice + (currentPrice ?? 0));
  // }




}