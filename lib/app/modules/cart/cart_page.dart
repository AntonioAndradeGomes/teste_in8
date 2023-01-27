import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/app/modules/cart/cart_controller.dart';
import 'package:teste_devnology/app/routes/app_routes.dart';
import 'package:teste_devnology/core/services/utils_services.dart';
import 'package:teste_devnology/core/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 23,
        ),
        children: [
          const Text(
            'Cart',
            style: TextStyle(
              color: AppColors.PRIMARYCOLOR,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          GetBuilder<CartController>(
            builder: (controller) {
              return Column(
                children: controller.cartItems.map((e) {
                  return Row(
                    children: [
                      Image.asset(
                        e.product.images.first,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.product.name,
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Text(
                              UtilsServices.priceCurrency(
                                e.product.price,
                              ),
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.changeQuantityFromView(
                                    e.quantity - 1,
                                    e,
                                  );
                                },
                                child: const Icon(
                                  Icons.remove_circle,
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 7,
                                ),
                                child: Text(
                                  e.quantity.toString(),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.changeQuantityFromView(
                                    e.quantity + 1,
                                    e,
                                  );
                                },
                                child: const Icon(
                                  Icons.add_circle,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
      bottomSheet: Container(
        height: 86,
        color: AppColors.BUTTOMCOLOR,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GetBuilder<CartController>(
                    builder: (controller) {
                      return Text(
                        UtilsServices.priceCurrency(
                          controller.cartTotalPrice(),
                        ),
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    },
                  ),
                ],
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
                    onPressed: () {
                      Get.toNamed(
                        AppRoutes.checkout,
                      );
                    },
                    label: const Text(
                      'CHECKOUT',
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
        ),
      ),
    );
  }
}
