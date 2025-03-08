import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widget/HiderWidget.dart';
import '../../Widget/benner.dart';
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
      WidgetHeader(),
      Bannerhome(),
    ]));
  }
}
