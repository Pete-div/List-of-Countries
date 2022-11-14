import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_country/provider.dart';
import 'package:i_country/screens/dashboard/index.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // Get.find<DashBoardController>().getCounteries();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return 
     MultiProvider(
      providers: [
     
      
        ChangeNotifierProvider(create: (_) => DashboardProvider()),
      ],
      child:


  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Dashboard(),),
      
    );
  }
}
