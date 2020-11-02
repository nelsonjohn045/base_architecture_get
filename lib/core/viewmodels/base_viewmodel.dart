import 'package:base_design/utils/enums/viewstate_enum.dart';
import 'package:get/get.dart';



class BaseViewmodel extends GetxController {
  ViewState _appState = ViewState.kIdle;
  ViewState get state => _appState;

  void updateState(ViewState state) {
    _appState = state;
    update();
  }
}
