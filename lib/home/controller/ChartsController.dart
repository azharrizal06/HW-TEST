import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logger/web.dart';

import '../../Url_servies/baseUrl.dart';
import '../model/Respon_model_charts.dart';

class ChartsController extends GetxController {
  Future<ResponModelCharts?> getLatestCharts() async {
    try {
      final response = await http.get(Uri.parse("$baseUrl$songUrl"));

      if (response.statusCode == 200) {
        Logger().i("response.body chats");
        Logger().i(response.body);
        return ResponModelCharts.fromJson(response.body);
      } else {
        Logger().e('Error: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      Logger().e('Error fetching charts: $e');
      return null;
    }
  }
}
