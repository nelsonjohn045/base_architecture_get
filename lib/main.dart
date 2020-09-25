import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:base_design/routes/routes.dart';
import 'package:base_design/utils/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget with AppRoutes {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appThemeLight,
        initialRoute: routeRoot,
        getPages: generateRoutes);
  }
}
