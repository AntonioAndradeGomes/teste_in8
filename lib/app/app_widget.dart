import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/app/routes/app_pages.dart';
import 'package:teste_devnology/app/routes/app_routes.dart';
import 'package:teste_devnology/core/theme/colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DevNology',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.PRIMARYCOLOR,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.PRIMARYCOLOR,
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.PRIMARYCOLOR,
          selectedItemColor: AppColors.YELLOW,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      initialRoute: AppRoutes.splashRoute,
      getPages: AppPages.pages,
    );
  }
}
