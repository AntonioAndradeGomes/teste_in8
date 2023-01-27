import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/app/modules/base/base_controller.dart';
import 'package:teste_devnology/app/modules/cart/cart_controller.dart';
import 'package:teste_devnology/app/modules/cart/cart_page.dart';
import 'package:teste_devnology/app/modules/home/home_page.dart';
import 'package:teste_devnology/core/paths/app_paths.dart';
import 'package:teste_devnology/core/theme/colors.dart';

class BaseScreen extends GetView<BaseController> {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          AppPaths.LOGO,
          height: 27,
          width: 170,
        ),
        actions: [
          Image.asset(
            AppPaths.CHAT,
            height: 20,
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 25,
            ),
            child: Image.asset(
              AppPaths.ALERT,
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: [
          const HomePage(),
          Container(),
          const CartPage(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: GetBuilder<CartController>(
                builder: (controller) {
                  return controller.cartItems.isNotEmpty
                      ? Badge(
                          label: Text(
                            controller.cartItems.length.toString(),
                          ),
                          backgroundColor: AppColors.YELLOW,
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                          ),
                        )
                      : const Icon(
                          Icons.shopping_cart_outlined,
                        );
                },
              ),
              label: 'Cart',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_rounded,
              ),
              label: 'Person',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: 'More',
            ),
          ],
          currentIndex: controller.currentIndex,
          onTap: (page) {
            controller.navigatePageView(page);
          },
        ),
      ),
    );
  }
}
