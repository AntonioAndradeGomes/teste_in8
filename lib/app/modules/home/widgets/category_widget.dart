import 'package:flutter/material.dart';
import 'package:teste_devnology/core/theme/colors.dart';

class CategoryWidget extends StatelessWidget {
  final String name;
  final List<Color> colors;
  final String pathImage;
  const CategoryWidget({
    super.key,
    required this.name,
    this.colors = AppColors.COLORSAPPAREAL,
    required this.pathImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: colors,
              stops: const [0, 1],
            ),
          ),
          child: Center(
            child: name == 'See All'
                ? const Icon(
                    Icons.chevron_right_rounded,
                    size: 35,
                    color: AppColors.YELLOW,
                  )
                : Image.asset(
                    pathImage,
                  ),
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            color: AppColors.PRIMARYCOLOR,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
