import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Cons_colors/Cons_colors.dart';

class LoginPromptCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Material(
        color: kColorBgAccent,
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Ink(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/ic_user_login.svg',
                  width: 48,
                  height: 48,
                ),
                SizedBox(width: 12), // Jarak antara avatar dan teks
                Expanded(
                  child: Text(
                    "Login to see voucher and point information",
                    style: bodyText,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
