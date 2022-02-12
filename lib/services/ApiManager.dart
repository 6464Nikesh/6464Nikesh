import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testing_app/Models/AllDrivers.dart';
import 'package:testing_app/Models/AllVehicle.dart';
import 'package:testing_app/Models/LoginRequest.dart';
import 'package:testing_app/Models/LoginResponse.dart';
import 'package:testing_app/Models/TransactionResponseModel.dart';
import 'package:testing_app/Models/TripType.dart';
import 'package:testing_app/value/Constant.dart';

class ApiManager {
//Login Api

  Future<LoginResponse> Login(LoginRequest loginRequest) async {
    var client;
    var response;
    var loginModel = null;
    try {
      response = await http.post((Uri.https(Constant.BASE_URL, Constant.LOGIN)),
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

//Get All Transaction

  Future<TransactionResponseModel> getTrancations() async {
    var client;
    var response;
    var transactionModel = null;

    try {
      client = http.Client();
      response = await client
          .get(Uri.https(Constant.BASE_URL, Constant.GET_ALL_TRANSACTION));
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

//Get Drivers

  Future<AllDrivers> getAllDrivers() async {
    var client;
    var response;
    var driversModel = null;
    try {
      response =
          await http.get(Uri.https(Constant.BASE_URL, Constant.GET_DRIVERS));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        driversModel = AllDrivers.fromJson(jsonMap);
      }
    } catch (Exception) {
      rethrow;
    }
    return driversModel;
  }

//Get Vehicle

  Future<AllVehicle> getAllVehicle() async {
    var client;
    var response;
    var vehicleModel = null;
    try {
      response =
          await http.get(Uri.https(Constant.BASE_URL, Constant.GET_VEHICLE));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        vehicleModel = AllVehicle.fromJson(jsonMap);
      }
    } catch (Exception) {
      rethrow;
    }
    return vehicleModel;
  }

//Get Trip

  Future<TripType> getTrip() async {
    var client;
    var response;
    var tripModel = null;

    try {
      response =
          await http.get(Uri.https(Constant.BASE_URL, Constant.GET_TRIP));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        tripModel = AllDrivers.fromJson(jsonMap);
      }
    } catch (Exception) {
      rethrow;
    }
    return tripModel;
  }
}
