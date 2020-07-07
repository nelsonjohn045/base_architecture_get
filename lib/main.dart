import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hive/hive.dart';

import 'package:base_design/routes/routes.dart';
import 'package:base_design/utils/themes.dart';
import 'package:base_design/core/datamodels/storage/db_datamodels.dart';

void main() async {
  Hive.registerAdapter(UserDataAdapter());
  await Hive.openBox<UserData>(kUserDataKey);

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
