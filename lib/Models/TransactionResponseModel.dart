class TransactionResponseModel {
  bool? success;
  List<Data>? data;
  String? message;

  TransactionResponseModel({this.success, this.data, this.message});

  TransactionResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? id;
  int? driverId;
  int? vehicleId;
  String? startTime;
  String? endTime;
  int? startKm;
  int? endKm;
  String? fuelAdded;
  int? isDamaged;
  String? damageInfo;
  DamageImage? damageImage;
  String? createdAt;
  String? driverName;
  String? vehicleName;

  Data(
      {this.id,
      this.driverId,
      this.vehicleId,
      this.startTime,
      this.endTime,
      this.startKm,
      this.endKm,
      this.fuelAdded,
      this.isDamaged,
      this.damageInfo,
      this.damageImage,
      this.createdAt,
      this.driverName,
      this.vehicleName});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    driverId = json['driver_id'];
    vehicleId = json['vehicle_id'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    startKm = json['start_km'];
    endKm = json['end_km'];
    fuelAdded = json['fuel_added'];
    isDamaged = json['is_damaged'];
    damageInfo = json['damage_info'];
    damageImage = json['damage_image'] != null
        ? new DamageImage.fromJson(json['damage_image'])
        : null;
    createdAt = json['created_at'];
    driverName = json['driver_name'];
    vehicleName = json['vehicle_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['driver_id'] = this.driverId;
    data['vehicle_id'] = this.vehicleId;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['start_km'] = this.startKm;
    data['end_km'] = this.endKm;
    data['fuel_added'] = this.fuelAdded;
    data['is_damaged'] = this.isDamaged;
    data['damage_info'] = this.damageInfo;
    if (this.damageImage != null) {
      data['damage_image'] = this.damageImage!.toJson();
    }
    data['created_at'] = this.createdAt;
    data['driver_name'] = this.driverName;
    data['vehicle_name'] = this.vehicleName;
    return data;
  }
}

class DamageImage {
  Datum? datum;

  DamageImage({this.datum});

  DamageImage.fromJson(Map<String, dynamic> json) {
    datum = json['datum'] != null ? new Datum.fromJson(json['datum']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.datum != null) {
      data['datum'] = this.datum!.toJson();
    }
    return data;
  }
}

class Datum {
  String? s1;
  String? s2;
  String? s3;

  Datum({this.s1, this.s2, this.s3});

  Datum.fromJson(Map<String, dynamic> json) {
    s1 = json['1'];
    s2 = json['2'];
    s3 = json['3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1'] = this.s1;
    data['2'] = this.s2;
    data['3'] = this.s3;
    return data;
  }
}
