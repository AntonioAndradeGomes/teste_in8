import 'package:get/get.dart';
import 'package:teste_devnology/app/routes/app_routes.dart';

class SplashController extends GetxController {
  Future<void> jumpToPage() async {
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );
    Get.offAllNamed(
      AppRoutes.baseRoute,
    );
  }
}
