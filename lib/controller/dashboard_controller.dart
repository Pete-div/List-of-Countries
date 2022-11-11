import 'package:get/get.dart';
import 'package:i_country/api/data/repository/dashboard_repo.dart';

import '../model/country_model.dart';

class DashBoardController extends GetxController {
  final DashBoardRepo dashBoardRepo;
  DashBoardController({required this.dashBoardRepo});

  List<dynamic> _listOfCountries = [];
  List<dynamic> get listOfCountries => _listOfCountries;

  Future<void> getCounteries() async {
    Response response = await dashBoardRepo.getCounteries();
    if (response.statusCode == 200) {
      print('Got prduct');
      _listOfCountries = [];
      _listOfCountries.addAll(Countries.fromJson(response.body).name as List);
      print(_listOfCountries);
      update();
    } else {}
  }
}
