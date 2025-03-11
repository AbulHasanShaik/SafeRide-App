class CartItem {
  final String productName;
  final double price;
  int quantity;

  CartItem({
    required this.productName,
    required this.price,
    this.quantity = 1,
  });
}
