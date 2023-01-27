import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_devnology/app/models/product.dart';
import 'package:teste_devnology/app/routes/app_routes.dart';
import 'package:teste_devnology/core/services/utils_services.dart';

class CardProduct extends StatelessWidget {
  final Product product;
  const CardProduct({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          AppRoutes.productRoute,
          arguments: product,
        );
      },
      child: Card(
        elevation: 1,
        shadowColor: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: 101,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                product.images.first,
                height: 80,
                width: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 2,
                  left: 8,
                  right: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      UtilsServices.priceCurrency(product.price),
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
