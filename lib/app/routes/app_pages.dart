import 'package:get/get.dart';
import 'package:teste_devnology/app/modules/base/base_binding.dart';
import 'package:teste_devnology/app/modules/base/base_screen.dart';
import 'package:teste_devnology/app/modules/checkout/checkout_page.dart';
import 'package:teste_devnology/app/modules/product/product_page.dart';
import 'package:teste_devnology/app/modules/splash/splash_binding.dart';
import 'package:teste_devnology/app/modules/splash/splash_screen.dart';
import 'package:teste_devnology/app/routes/app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.baseRoute,
      page: () => const BaseScreen(),
      binding: BaseBinding(),
    ),
    GetPage(
      name: AppRoutes.splashRoute,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.productRoute,
      page: () => ProductPage(),
    ),
    GetPage(
      name: AppRoutes.checkout,
      page: () => const CheckoutPage(),
    ),
  ];
}
