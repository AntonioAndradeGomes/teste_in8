import 'package:get/get.dart';
import 'package:teste_devnology/app/modules/base/base_controller.dart';
import 'package:teste_devnology/app/modules/cart/cart_controller.dart';
import 'package:teste_devnology/app/modules/home/home_controller.dart';

class BaseBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseController>(
      () => BaseController(),
    );
    Get.put<HomeController>(
      HomeController(),
    );
    Get.put<CartController>(
      CartController(),
    );
  }
}
