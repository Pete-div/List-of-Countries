import 'package:get/get.dart';
import 'package:i_country/api/data/api_client.dart';
import 'package:i_country/api/data/repository/dashboard_repo.dart';
import 'package:i_country/constant/api_constant.dart';
import 'package:i_country/controller/dashboard_controller.dart';

Future<void> init() async {
  // apiClient
  Get.lazyPut(() => ApiClient(appBaseUrl: 'https://restcountries.com'));
// repo
  Get.lazyPut(() => DashBoardRepo(apiClient: Get.find()));
  // controller
  Get.lazyPut(() => DashBoardController(dashBoardRepo: Get.find()));
}
