import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/core/paths/app_paths.dart';
import 'package:teste_devnology/core/theme/colors.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Image.asset(
          AppPaths.LOGO,
          height: 27,
          width: 170,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.PRIMARYCOLOR,
            ),
            child: const Center(
              child: Icon(
                Icons.check,
                color: AppColors.YELLOW,
                size: 38,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
              bottom: 23,
            ),
            child: Text(
              'Order Placed!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: AppColors.PRIMARYCOLOR,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: Text(
              'Your order was placed successfully. For more details, check All My Orders page under Profile tab',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.PRIMARYCOLOR,
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          SizedBox(
            height: 40,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.PRIMARYCOLOR,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
                label: const Text(
                  'MY ORDERS',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
