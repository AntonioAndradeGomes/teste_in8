import 'package:flutter/material.dart';
import 'package:teste_devnology/core/paths/app_paths.dart';

class BannersWidget extends StatelessWidget {
  const BannersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        children: [
          Image.asset(
            AppPaths.BANNER,
            height: 180,
            width: 325,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 180,
            width: 325,
            decoration: BoxDecoration(
              color: Colors.pink[100],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
