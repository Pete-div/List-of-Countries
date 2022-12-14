import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:i_country/constant/api_constant.dart';

import '../model/country_model.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  static Future getCountries() async {
    List<Country> listOfCountries = [];

    try {
      final response = await http.get(
          Uri.parse(
            AppConstants.BASE_URL + AppConstants.DASHBOARD_URL,
          ),
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          });
      print(response.body);
      if (response.statusCode == 200) {
        final itemList = jsonDecode(response.body);
        print("this is ${itemList}");
        for (var x in itemList) {
          listOfCountries.add(Country.fromJson(x));
           
        }
      }
  
      return listOfCountries ;
        print('After ll ${listOfCountries}');
    } catch (e) {
      log('error:${e.toString()}');
    }
  }
}



// class ApiServices {
//   static Future getAllCountries() async {
//     List<DataModel> dataList = [];
//     try {
//       var uri = Uri.parse(API_URL);

//       var response = await http.get(uri);

//       //log('response status code: ${response.statusCode}');
//       //log('response body: ${response.body}');
//       //log('body length: ${response.body.length}');
//       if (response.statusCode == 200) {
//         final jsonDataList = jsonDecode(response.body);
//         for (var v in jsonDataList) {
//           dataList.add(DataModel.fromJson(v));
//         }
//       }

//       // List<String> countryNameList = [];
//       //log(dataList.toString());
//       // print(data);

//       // for (var v in data.values) {
//       //   for (var w in v.values) {
//       //     //DataModel dataModel = DataModel(name: v['name']);
//       //     String countryName = w['name']['common'];
//       //     //dataList.add(dataModel);
//       //     countryNameList.add(countryName);
//       //   }
//       // }
//       //log('dataList: ${countryNameList.length}');
//       // return Name.fromJson(data['common']);
//       return dataList;
//     } catch (e) {
//       log('Error being caught: ${e.toString()}');
//     }
//   }
// }




