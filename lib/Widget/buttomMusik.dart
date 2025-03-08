import 'package:flutter/material.dart';
import 'package:logger/web.dart';

class MusicButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Logger().i("Tombol Apple Music ditekan");
          },
          child: Image.asset(
            "assets/icons/ic_applemusic.png",
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height * 0.1,
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () {
            Logger().i("Tombol Spotify ditekan");
          },
          child: Image.asset(
            "assets/icons/ic_spotify.png",
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height * 0.1,
          ),
        )
      ],
    );
  }
}
