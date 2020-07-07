import 'package:get/get.dart';

import 'package:base_design/core/viewmodels/api_viewmodel.dart';
import 'package:base_design/core/viewmodels/home_viewmodel.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ApiViewmodel>(ApiViewmodel());
    Get.lazyPut<HomeViewmodel>(() => HomeViewmodel());
  }
}
