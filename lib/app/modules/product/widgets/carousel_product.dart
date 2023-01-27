import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:teste_devnology/core/theme/colors.dart';

class CarouselProductWidget extends StatefulWidget {
  final List<String> images;
  const CarouselProductWidget({
    super.key,
    required this.images,
  });

  @override
  State<CarouselProductWidget> createState() => _CarouselProductWidgetState();
}

class _CarouselProductWidgetState extends State<CarouselProductWidget> {
  int indexImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.images
              .map(
                (e) => Image.asset(
                  e,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              )
              .toList(),
          options: CarouselOptions(
            enlargeCenterPage: true,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(
              seconds: 2,
            ),
            onPageChanged: (index, reason) {
              setState(() {
                indexImage = index;
              });
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        AnimatedSmoothIndicator(
          activeIndex: indexImage,
          count: widget.images.length,
          effect: const SlideEffect(
            dotWidth: 10,
            dotHeight: 10,
            activeDotColor: AppColors.PRIMARYCOLOR,
            dotColor: AppColors.SLIDERCOLOR,
            spacing: 10,
          ),
        ),
      ],
    );
  }
}
