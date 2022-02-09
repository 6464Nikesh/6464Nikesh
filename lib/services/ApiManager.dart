import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testing_app/Models/LoginRequest.dart';
import 'package:testing_app/Models/LoginResponse.dart';
import 'package:testing_app/Models/TransactionResponseModel.dart';
import 'package:testing_app/value/Constant.dart';

class ApiManager {
  // Login Api
  Future<LoginResponse> Login(LoginRequest loginRequest) async {
    var client;
    var response;
    var loginModel = null;
    try {
      response = await http.post((Uri.https(Strings.BASE_URL, Strings.LOGIN)),
          body: loginRequest.toJson());
      if (response.statusCode == 200 || response.statusCode == 404) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        loginModel = LoginResponse.fromJson(jsonMap);
      }
    } catch (Exception) {
      rethrow;
    }
    return loginModel;
  }

  // Get All Transaction
  Future<TransactionResponseModel> getTrancations() async {
    var client;
    var response;
    var transactionModel = null;
    try {
      client = http.Client();
      response = await client
          .get(Uri.https(Strings.BASE_URL, Strings.GET_ALL_TRANSACTION));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        transactionModel = TransactionResponseModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      rethrow;
    }
    return transactionModel;
  }
}
