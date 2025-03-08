import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Cons_colors/Cons_colors.dart';
import '../home/controller/HomeController.dart';

class Bannerhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();

    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(
            color: kColorText,
          ),
        );
      }

      if (controller.bannerList.isEmpty) {
        return SizedBox(); // Tidak tampilkan apa pun jika tidak ada banner
      }

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                viewportFraction: 0.82,
                height: MediaQuery.of(context).size.width * 0.9,
                autoPlay: controller.bannerList.length > 1,
                onPageChanged: (index, reason) {
                  controller.currentIndex.value = index;
                },
              ),
              items: controller.bannerList.map((banner) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(banner.imageUrl!),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.bannerList.length,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: controller.currentIndex.value == index ? 12 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.currentIndex.value == index
                          ? kColorBrand
                          : kColorTextSecondary),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
