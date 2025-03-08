import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Cons_colors/Cons_colors.dart';
import '../controller/HomeController.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HomeController homeController = Get.put(HomeController());
  void initState() {
    super.initState();
    homeController.getBanner();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: kToolbarHeight),
      Text(
        'Hi, HWG People',
        style: heading1,
      ),
      InkWell(
        onTap: () {},
        child: Text(
          'Click to login',
          style: TextStyle(color: kColorPrimary, fontSize: 14),
        ),
      ),
      HomeBanner2(context),
    ]));
  }

  Widget HomeBanner2(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();

    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
            child: CircularProgressIndicator(
          color: kColorText,
        )); // Loading saat get data
      }

      if (controller.bannerList.isEmpty) {
        return SizedBox(); // Jika data kosong tampilkan SizedBox()
      }

      return Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              autoPlay: controller.bannerList.length > 1,
              onPageChanged: (index, reason) => setState(() {
                controller.currentIndex.value = index;
              }),
            ),
            items: controller.bannerList.map((banner) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
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
                        ? Colors.amber // Aktif
                        : Colors.grey, // Tidak aktif
                  ),
                ),
              )),
        ],
      );
    });
  }
}
