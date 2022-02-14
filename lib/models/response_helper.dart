import 'dart:async';

import 'package:flutter/services.dart';

class ResponseHelper<T> {
  // static final _singleton = n ResponseHelper._internal();
  T data;
  bool hasError;
  String errorMessage;
  bool isLoading;

  ResponseHelper({
    required this.data,
    this.errorMessage = 'There is No Data yet',
    this.hasError = false,
    this.isLoading = true,
  });
}
