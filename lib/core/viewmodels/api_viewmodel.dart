import 'package:base_design/core/viewmodels/base_viewmodel.dart';

class ApiViewmodel extends BaseViewmodel {
  final String endPoint = '<API_END_POINT>';

  Map<String, String> headers = {
    "Content-Type": "application/json-patch+json",
    "accept": "*/*",
  };

  void addOrUpdateToken(String token) {
    headers.update('Authorization', (value) => 'Bearer $token',
        ifAbsent: () => 'Bearer $token');
  }
}
