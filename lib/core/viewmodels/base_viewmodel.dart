import 'package:get/get.dart';

import 'package:base_design/utils/viewstate_enum.dart';

class BaseViewmodel extends GetxController {
  ViewState _appState = ViewState.kIdle;
  ViewState get state => _appState;

  void updateState(ViewState state) {
    _appState = state;
    update();
  }
}
