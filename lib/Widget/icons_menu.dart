import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hw_test/home/views/chartview.dart';

import '../Cons_colors/Cons_colors.dart';

class HomeMenu extends StatelessWidget {
  final List<Map<String, String>> menuItems = [
    {"title": "Atlas", "image": "assets/icons/ic_atlas_logo.svg"},
    {"title": "Reservation", "image": "assets/icons/ic_home_reservation.svg"},
    {"title": "Outlet", "image": "assets/icons/ic_home_outlets.svg"},
    {"title": "My Bottles", "image": "assets/icons/ic_bottles.svg"},
    {"title": "What's On", "image": "assets/icons/ic_whatson.svg"},
    {"title": "Events", "image": "assets/icons/ic_event.svg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 25, // Jarak antar item horizontal
          runSpacing: 20, // Jarak antar baris
          children: menuItems.map((item) => _buildMenuItem(item)).toList(),
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    Map<String, String> item,
  ) {
    return SizedBox(
      width: 80,
      child: InkWell(
        onTap: () {
          Get.to(ChartView());
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              item["image"]!,
              width: 50,
              height: 50,
            ),
            SizedBox(height: 6),
            Text(
              item["title"]!,
              textAlign: TextAlign.center,
              style: TextStyle(color: kColorText, fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
