import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Cons_colors/Cons_colors.dart';
import '../../Widget/buttomMusik.dart';
import '../controller/ChartsController.dart';
import '../model/Respon_model_charts.dart';

class ChartView extends StatefulWidget {
  const ChartView({super.key});

  @override
  State<ChartView> createState() => _ChartViewState();
}

class _ChartViewState extends State<ChartView> {
  final ChartsController homeController = Get.put(ChartsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBg,
      body: Column(
        children: [
          SizedBox(height: kToolbarHeight),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: kColorBgAccentDarker,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'HWGPeople Top Charts',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kColorText),
                    ),
                  ),
                  listSong(),
                  const SizedBox(height: 10),
                  MusicButtons(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listSong() {
    return Expanded(
      child: FutureBuilder<ResponModelCharts?>(
        future: homeController.getLatestCharts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(
              color: kColorPrimary,
            ));
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: kColorText),
              ),
            );
          }
          final chartData = snapshot.data?.data;
          if (chartData == null ||
              chartData.songs == null ||
              chartData.songs!.isEmpty) {
            return const Center(
              child: Text(
                'Tidak ada data',
                style: TextStyle(color: kColorText),
              ),
            );
          }

          return ListView.builder(
            itemCount: chartData.songs!.length,
            itemBuilder: (context, index) {
              final songData = chartData.songs![index];
              final bool isTopThree = index < 3;
              final TextStyle rankColor = isTopThree
                  ? (index == 0
                      ? Rank1
                      : index == 1
                          ? Rank2
                          : Rank3)
                  : Rankall;

              return ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${songData.position}${_getRankSuffix(songData.position!)}',
                      style: rankColor,
                    ),
                    const SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: songData.song?.artistProfilePicture == null
                          ? Container(
                              width: 40,
                              height: 40,
                              color: kColorTextSecondary,
                              child: const Icon(Icons.music_note,
                                  color: kColorText),
                            )
                          : Image.network(
                              songData.song!.artistProfilePicture!,
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ],
                ),
                title: Text(
                  songData.song?.title ?? 'Unknown',
                  style: const TextStyle(
                    color: kColorText,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  songData.song?.artistName ?? 'Unknown Artist',
                  style:
                      const TextStyle(color: kColorTextSecondary, fontSize: 12),
                ),
              );
            },
          );
        },
      ),
    );
  }

  String _getRankSuffix(int number) {
    if (number >= 11 && number <= 13) return 'th';
    switch (number % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }
}
