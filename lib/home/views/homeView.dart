import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Cons_colors/Cons_colors.dart';
import '../../Widget/benner.dart';
import '../../Widget/favorit.dart';
import '../../Widget/fromloginCart.dart';
import '../../Widget/icons_menu.dart';
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
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            Bannerhome(),
            LoginPromptCard(),
            HomeMenu(),
            FavoriteOutletsCard()
          ]),
        ),
      ),
    ));
  }
}
