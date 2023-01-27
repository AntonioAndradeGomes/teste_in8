import 'package:flutter/material.dart';
import 'package:teste_devnology/app/models/product.dart';
import 'package:teste_devnology/app/modules/home/widgets/banners.dart';
import 'package:teste_devnology/app/modules/home/widgets/card_product.dart';
import 'package:teste_devnology/app/modules/home/widgets/categories_widget.dart';
import 'package:teste_devnology/core/theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 23,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Categories',
                  style: TextStyle(
                    color: AppColors.PRIMARYCOLOR,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                CategoriesWidget(),
                Text(
                  'Latest',
                  style: TextStyle(
                    color: AppColors.PRIMARYCOLOR,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const BannersWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
            ),
            child: SizedBox(
              height: 170,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final product = mockProducts[index];
                  return CardProduct(
                    product: product,
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 11,
                ),
                itemCount: mockProducts.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
