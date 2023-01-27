import 'package:teste_devnology/app/models/product.dart';

class ItemCart {
  final Product product;
  int quantity;
  ItemCart({
    required this.product,
    required this.quantity,
  });

  double get totalPrice => product.price * quantity;
}
