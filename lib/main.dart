import 'package:base_design/utils/consts/db_keys.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:base_design/routes/routes.dart';
import 'package:base_design/utils/themes.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'core/datamodels/storage/auth_dbmodel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await registerDbAdapters();
  //Open localConfig Box
  await _initConfigs();
  runApp(MyApp());
}
Future<void> registerDbAdapters() async {
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);


}

Future<void> _initConfigs() async {

  await Hive.openBox<AuthModel>(kAuthDBKey);
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
