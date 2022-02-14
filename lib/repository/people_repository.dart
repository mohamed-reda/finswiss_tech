import 'dart:convert';

import '../models/people.dart';
import 'package:http/http.dart' as http;

import '../models/response_helper.dart';

Future<ResponseHelper<People>> getRequest() async {
  //Getting the data from the Server

  ResponseHelper<People> _responseHelper = ResponseHelper(
      //means that it will load
      isLoading: true,
      hasError: true,
      errorMessage: 'An error occurred',
      data: People());

  try {
    var url = Uri.parse("https://swapi.dev/api/people");
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      _responseHelper.errorMessage = '';
      _responseHelper.data = People.fromJson(responseData);
      _responseHelper.hasError = false;
      _responseHelper.isLoading = false;

      return _responseHelper;
    }
    _responseHelper.isLoading = false;
    _responseHelper.hasError = true;
    return _responseHelper;
  } catch (e) {
    print('Error is:${e.toString()}');
    _responseHelper.isLoading = false;
    _responseHelper.hasError = true;
    return _responseHelper;
  }
}
