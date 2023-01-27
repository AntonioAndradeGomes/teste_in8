import 'package:flutter/material.dart';
import 'package:teste_devnology/app/modules/home/widgets/category_widget.dart';
import 'package:teste_devnology/core/paths/app_paths.dart';
import 'package:teste_devnology/core/theme/colors.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12,
        bottom: 22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CategoryWidget(
            name: 'Apparel',
            pathImage: AppPaths.APPAREL,
          ),
          CategoryWidget(
            name: 'Beauty',
            pathImage: AppPaths.BEAUTY,
            colors: AppColors.COLORSBEAUTY,
          ),
          CategoryWidget(
            name: 'Shoes',
            pathImage: AppPaths.SHOES,
            colors: AppColors.COLORSSHOES,
          ),
          CategoryWidget(
            name: 'See All',
            pathImage: AppPaths.SHOES,
            colors: [Colors.white, Colors.white],
          ),
        ],
      ),
    );
  }
}
