import 'package:get/get.dart';
import 'package:teste_devnology/app/models/item_cart.dart';
import 'package:teste_devnology/app/models/product.dart';

class CartController extends GetxController {
  List<ItemCart> cartItems = [
    ItemCart(
      product: mockProducts.first,
      quantity: 2,
    ),
  ];

  double cartTotalPrice() {
    double total = 0;
    for (final item in cartItems) {
      total += item.totalPrice;
    }
    return total;
  }

  int _getItemIndex(Product item) {
    return cartItems.indexWhere((element) => element.product.id == item.id);
  }

  addToCart({required Product product, int quantity = 1}) {
    int itemIndex = _getItemIndex(product);
    if (itemIndex >= 0) {
      final item = cartItems[itemIndex];
      _changeQuantity((item.quantity + quantity), item);
    } else {
      cartItems.add(
        ItemCart(
          product: product,
          quantity: quantity,
        ),
      );
    }
    update();
  }

  _changeQuantity(int quantity, ItemCart item) {
    item.quantity = quantity;
    update();
  }

  changeQuantityFromView(int quantity, ItemCart index) {
    if (quantity <= 0) {
      cartItems.remove(index);
    } else {
      cartItems
          .firstWhere((element) => element.product == index.product)
          .quantity = quantity;
    }
    update();
  }
}
