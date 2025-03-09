import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Cons_colors/Cons_colors.dart';
import '../../Widget/HiderWidget.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Obx(
      () => homeController.isLoading.value
          ? Center(
              child: CircularProgressIndicator(
                color: kColorPrimary,
              ),
            )
          : SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // tinngi atas
                    SizedBox(height: kToolbarHeight),
                    //Hider Widget
                    WidgetHeader(),
                    // banner wideget
                    Bannerhome(),
                    // login widget
                    LoginPromptCard(),
                    // charts widget
                    HomeMenu(),
                    // favorite widget
                    FavoriteOutletsCard()
                  ]),
            ),
    )));
  }
}
