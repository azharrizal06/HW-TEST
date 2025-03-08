import 'package:flutter/material.dart';
import 'package:logger/web.dart';

import '../Cons_colors/Cons_colors.dart';

class WidgetHeader extends StatelessWidget {
  const WidgetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, HWG People',
            style: heading1,
          ),
          InkWell(
            onTap: () {
              Logger().i("Tombol login ditekan");
            },
            child: const Text(
              'Click to login',
              style: TextStyle(color: kColorPrimary, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
