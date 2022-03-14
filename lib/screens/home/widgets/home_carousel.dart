import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CarouselOptions carouselOptions = CarouselOptions(
      height: 150,
      //aspectRatio: 16 / 9,
      viewportFraction: 1,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 3),
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
      autoPlayCurve: Curves.easeIn,
      //enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
    );

    return SizedBox(
      width: double.infinity,
      height: 150,
      child: CarouselSlider(
        options: carouselOptions,
        items: [
          'assets/images/slider1.jpg',
          'assets/images/slider2.jpg',
          'assets/images/slider3.jpg'
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    i,
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
