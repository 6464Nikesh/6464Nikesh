import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testing_app/Models/TransactionResponseModel.dart';
import 'package:testing_app/value/Constant.dart';

class API_Manager {
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
