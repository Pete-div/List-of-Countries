import 'package:get/get.dart';
import 'package:i_country/api/data/api_client.dart';
import 'package:i_country/constant/api_constant.dart';

class DashBoardRepo extends GetxService {
  final ApiClient apiClient;
  DashBoardRepo({required this.apiClient});

  Future<Response> getCounteries() async {
    return await apiClient.getData('/v3.1/all');
  }
}
