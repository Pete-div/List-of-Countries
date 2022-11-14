
import 'package:flutter/material.dart';
import 'package:i_country/constant/api_service.dart';
import 'package:i_country/model/country_model.dart';




class DashboardProvider with ChangeNotifier {
  List<Country> _countries = [];

  List<Country> get getCountries => _countries;

  bool isChecked0 = false;
  bool get getIsChecked0 => isChecked0;

  void toggleIsChecked0() {
    isChecked0 = !isChecked0;
    notifyListeners();
  }

  bool isChecked1 = false;
  bool get getIsChecked1 => isChecked1;

  void toggleIsChecked1() {
    isChecked1 = !isChecked1;
    notifyListeners();
  }

  bool isChecked2 = false;
  bool get getIsChecked2 => isChecked2;

  void toggleIsChecked2() {
    isChecked2 = !isChecked2;
    notifyListeners();
  }

  bool isChecked3 = false;
  bool get getIsChecked3 => isChecked3;

  void toggleIsChecked3() {
    isChecked3 = !isChecked3;
    notifyListeners();
  }

  bool isChecked4 = false;
  bool get getIsChecked4 => isChecked4;

  void toggleIsChecked4() {
    isChecked4 = !isChecked4;
    notifyListeners();
  }

  bool isChecked5 = false;
  bool get getIsChecked5 => isChecked5;

  void toggleIsChecked5() {
    isChecked5 = !isChecked5;
    notifyListeners();
  }

  bool isChecked6 = false;
  bool get getIsChecked6 => isChecked6;

  void toggleIsChecked6() {
    isChecked6 = !isChecked6;
    notifyListeners();
  }

  Future<List<Country>> fetchListOfCountries() async {
    _countries = await ApiClient.getCountries();
    notifyListeners();
    return _countries;
  }

  Country findCountryDataByName({required String? common}) {
    return _countries
        .firstWhere((element) => element.name!.common == common);
  }

  List<Country> fetchCountriesByContinent(
      {required List<Country> list, required String continent}) {
    return _countries
        .where((element) => element.continents!.first == continent)
        .toList();
  }

 

}
