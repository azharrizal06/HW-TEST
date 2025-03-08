import 'package:flutter/material.dart';

import '../Cons_colors/Cons_colors.dart';

class FavoriteOutletsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        // Judul
        Text(
          "My Favorite Outlets",
          style: heading2,
        ),
        SizedBox(height: 10),

        // Card Konten
        Material(
          color: kColorBgAccent,
          borderRadius: BorderRadius.circular(5),
          child: InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () {},
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                // color: kColorBgAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "Your favorite outlets will be shown here. Add some for easier access to reservations and more. ⭐",
                style: bodyText,
              ),
            ),
          ),
        ),

        SizedBox(height: 20),
      ],
    );
  }
}
