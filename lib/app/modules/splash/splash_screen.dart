import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/app/modules/splash/splash_controller.dart';
import 'package:teste_devnology/core/paths/app_paths.dart';
import 'package:teste_devnology/core/theme/colors.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.jumpToPage();
    return Scaffold(
      backgroundColor: AppColors.PRIMARYCOLOR,
      body: Center(
        child: Image.asset(
          AppPaths.LOGO,
        ),
      ),
    );
  }
}
