import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/app/models/product.dart';
import 'package:teste_devnology/app/modules/base/base_controller.dart';
import 'package:teste_devnology/app/modules/cart/cart_controller.dart';
import 'package:teste_devnology/app/modules/product/widgets/carousel_product.dart';
import 'package:teste_devnology/core/paths/app_paths.dart';
import 'package:teste_devnology/core/services/utils_services.dart';
import 'package:teste_devnology/core/theme/colors.dart';

class ProductPage extends StatelessWidget {
  final Product product = Get.arguments;

  ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        centerTitle: true,
        title: Image.asset(
          AppPaths.LOGO,
          height: 27,
          width: 170,
        ),
        actions: [
          GetBuilder<CartController>(
            builder: (controller) {
              return controller.cartItems.isEmpty
                  ? const Icon(
                      Icons.shopping_cart_outlined,
                    )
                  : Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        right: 16,
                      ),
                      child: Badge(
                        label: Text(
                          controller.cartItems.length.toString(),
                        ),
                        backgroundColor: AppColors.YELLOW,
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                        ),
                      ),
                    );
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 25,
        ),
        children: [
          Text(
            product.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: CarouselProductWidget(
              images: product.images,
            ),
          ),
          const Text(
            'Price:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            UtilsServices.priceCurrency(product.price),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w900,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 14,
            ),
            child: Text(
              'About this item:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: product.about
                .map(
                  (e) => Text(
                    e,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
                .toList(),
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
              SizedBox(
                height: 40,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    icon: const Icon(
                      Icons.expand_less,
                      color: AppColors.PRIMARYCOLOR,
                    ),
                    onPressed: () {
                      //fechar
                      //Get.back();
                      //adicionar no carrinho
                      //
                      //cart
                      //
                    },
                    label: const Text(
                      'SHARE THIS',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.PRIMARYCOLOR,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
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
                      //fechar
                      Get.back();
                      //adicionar no carrinho
                      Get.find<CartController>().addToCart(
                        product: product,
                      );
                      //cart
                      Get.find<BaseController>().navigatePageView(2);
                    },
                    label: const Text(
                      'ADD TO CART',
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
