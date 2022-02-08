import 'dart:convert';

class LoginResponse {
  bool? success;
  Data? data;
  String? message;

  LoginResponse({this.success, this.data, this.message});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? id;
  String? email;
  String? name;
  String? role;
  int? driverId;
  int? isActive;
  String? licenceNumber;
  String? licenceImage;
  String? driverImage;
  String? driverAttachment;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.email,
      this.name,
      this.role,
      this.driverId,
      this.isActive,
      this.licenceNumber,
      this.licenceImage,
      this.driverImage,
      this.driverAttachment,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    name = json['name'];
    role = json['role'];
    driverId = json['driver_id'];
    isActive = json['is_active'];
    licenceNumber = json['licence_number'];
    licenceImage = json['licence_image'];
    driverImage = json['driver_image'];
    driverAttachment = json['driver_attachment'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['name'] = this.name;
    data['role'] = this.role;
    data['driver_id'] = this.driverId;
    data['is_active'] = this.isActive;
    data['licence_number'] = this.licenceNumber;
    data['licence_image'] = this.licenceImage;
    data['driver_image'] = this.driverImage;
    data['driver_attachment'] = this.driverAttachment;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
