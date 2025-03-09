import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logger/web.dart';

import '../../Url_servies/baseUrl.dart';
import '../model/Respon_model_benner.dart';

class HomeController extends GetxController {
  var bannerList = <DataBenner>[].obs;
  var currentIndex = 0.obs;
  var isLoading = true.obs;

  Future<void> getBanner() async {
    try {
      isLoading.value = true;
      final response = await http.get(
        Uri.parse('$baseUrl$bennerurl'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        Logger().i(data);

        bannerList.assignAll((data['data'] as List)
            .map((item) => DataBenner.fromMap(item))
            .toList());
        isLoading(false);
      } else {
        Logger().e('Error: ${response.statusCode}');
        throw Exception('Gagal mengambil data banner');
      }
    } catch (e) {
      isLoading(false);
      Logger().e('Error: $e');
    }
  }
}
