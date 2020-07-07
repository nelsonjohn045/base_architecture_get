import 'package:flutter/material.dart';

mixin HttpRequestValidation {
  static const responseSuccess = 'success';
  static const Map<int, String> httpStatusCodes = {
    200: responseSuccess, //Login Success
    401: 'Invalid Username or Password.', //Invalid Credentials
    201: responseSuccess, //Values inserted
    422: 'Please review the info and enter a unique Email ID', //Invalid syntax
    408: 'Request Timed-out. Please try again', //Timeout
  };

  String validateRequest(String trace, int code) {
    if (httpStatusCodes.containsKey(code)) {
      final String _res = httpStatusCodes[code];
      debugPrint('$trace $_res');
      return _res;
    }
    return 'Unknown Error Occured. Please try again';
  }
}
