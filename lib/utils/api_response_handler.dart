import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ApiErrDatamodel {
  final bool success;
  final String message;
  ApiErrDatamodel({@required this.success, @required this.message});
}

class ApiResErrHandler {
  //Parse and get if request was successful or not
  ApiErrDatamodel parseErrorResponse(Response res) {
    bool _success = false;
    String _message;

    switch (res.statusCode) {
      case 200:
        _success = true;
        _message = null;
        break;
      case 201:
        _success = true;
        _message = null;
        break;
      default:
        _success = false;
        _message = _extractErrFromJson(res.body);
        break;
    }

    return ApiErrDatamodel(success: _success, message: _message);
  }

  String _extractErrFromJson(String body) {
    const String _kMessageKey = 'message';
    String _message;

    final Map _map = jsonDecode(body) as Map<String, dynamic>;

    if (_map.containsKey(_kMessageKey)) {
      final _err = _map[_kMessageKey].toString();
      if (!_err.isNullOrBlank) {
        _message = _err;
      }
    } else {
      _message = 'An unknown error has occured';
    }

    return _message;
  }
}
