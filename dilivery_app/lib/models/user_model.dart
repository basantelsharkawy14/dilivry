// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.success,
    required this.accessToken,
    required this.tokenType,
    required this.firstName,
    required this.lastName,
    this.email,
    required this.phone,
    required this.nationalId,
    required this.licenceId,
    required this.vechType,
    required this.nationality,
    required this.employment,
     this.vendor,
  });

  String success;
  String accessToken;
  String tokenType;
  String firstName;
  String lastName;
  String ? email;
  String phone;
  String nationalId;
  String licenceId;
  String vechType;
  String nationality;
  String employment;
  Vendor? vendor;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    success: json["success"]??"",
    accessToken: json["access_token"]??"",
    tokenType: json["token_type"]??"",
    firstName: json["first_name"]??"",
    lastName: json["last_name"]??"",
    email: json["email"].toString(),
    phone: json["phone"]??"",
    nationalId: json["national_id"]??"",
    licenceId: json["licence_id"]??"",
    vechType: json["vech_type"]??"",
    nationality: json["nationality"]??"",
    employment: json["employment"]??"",
   // vendor: Vendor.fromJson(json["vendor"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "access_token": accessToken,
    "token_type": tokenType,
    "first_name": firstName,
    "last_name": lastName,
    "email": email.toString(),
    "phone": phone,
    "national_id": nationalId,
    "licence_id": licenceId,
    "vech_type": vechType,
    "nationality": nationality,
    "employment": employment,
   // "vendor": vendor,
  };
}

class Vendor {
  Vendor({
    required this.id,
    required this.phone,
    required this.email,
    required this.deliveryFee,
    required this.isActive,
    required this.cityId,
    required this.regionId,
     this.image,
    required this.vendorRate,
    required this.tasteRate,
    required this.priceRate,
     this.deviceId,
     this.emailVerifiedAt,
    required  this.createdAt,
    required this.updatedAt,
    required this.chatUid,
    required this.lat,
    required this.long,
    required this.userType,
    required this.uid,
    required this.name,
     this.description,
     this.city,
     this.region,
      this.times,
     this.ordermethod,
      this.vendordeliverycharges,
     this.translations,
  });

  int id;
  String phone;
  String email;
  int deliveryFee;
  int isActive;
  int cityId;
  int regionId;
  String ?image;
  String vendorRate;
  String tasteRate;
  String priceRate;
  String? deviceId;
  String ?emailVerifiedAt;
  String createdAt;
  String updatedAt;
  String chatUid;
  String lat;
  String long;
  String userType;
  String uid;
  String name;
  String? description;
  City ?city;
  Regin ?region;
  List<Time> ?times;
  List<Ordermethod>? ordermethod;
  List<Vendordeliverycharge> ?vendordeliverycharges;
  List<VendorTranslation>? translations;

  factory Vendor.fromJson(Map<String, dynamic> json) => Vendor(
    id: json["id"]??-1,
    phone: json["phone"]??"",
    email: json["email"]??"",
    deliveryFee: json["delivery_fee"]??-1,
    isActive: json["is_active"]??-1,
    cityId: json["city_id"]??-1,
    regionId: json["region_id"]??-1,
    image: json["image"].toString(),
    vendorRate: json["vendor_rate"]??"",
    tasteRate: json["taste_rate"]??"",
    priceRate: json["price_rate"]??"",
    deviceId: json["device_id"].toString(),
    emailVerifiedAt: json["email_verified_at"].toString(),
    createdAt: json["created_at"]??"",
    updatedAt: json["updated_at"]??"",
    chatUid: json["chat_uid"]??"",
    lat: json["lat"]??"",
    long: json["long"]??"",
    userType: json["user_type"]??"",
    uid: json["uid"]??"",
    name: json["name"]??"",
    description: json["description"].toString(),
  //  city: City.fromJson(json["city"]),
    //region: Regin.fromJson(json["region"]),
   // times: List<Time>.from(json["times"].map((x) => Time.fromJson(x))),
   // ordermethod: List<Ordermethod>.from(json["ordermethod"].map((x) => Ordermethod.fromJson(x))),
   // vendordeliverycharges: List<Vendordeliverycharge>.from(json["vendordeliverycharges"].map((x) => Vendordeliverycharge.fromJson(x))),
  //  translations: List<VendorTranslation>.from(json["translations"].map((x) => VendorTranslation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "phone": phone,
    "email": email,
    "delivery_fee": deliveryFee,
    "is_active": isActive,
    "city_id": cityId,
    "region_id": regionId,
    "image": image.toString(),
    "vendor_rate": vendorRate,
    "taste_rate": tasteRate,
    "price_rate": priceRate,
    "device_id": deviceId.toString(),
    "email_verified_at": emailVerifiedAt.toString(),
    "created_at": createdAt,
    "updated_at": updatedAt,
    "chat_uid": chatUid,
    "lat": lat,
    "long": long,
    "user_type": userType,
    "uid": uid,
    "name": name,
    "description": description.toString(),
    "city": city!,
    "region": region!,
    "times": List<dynamic>.from(times!.map((x) => x.toJson())),
    "ordermethod": List<dynamic>.from(ordermethod!.map((x) => x.toJson())),
    "vendordeliverycharges": List<dynamic>.from(vendordeliverycharges!.map((x) => x.toJson())),
    "translations": List<dynamic>.from(translations!.map((x) => x.toJson())),
  };
}

class City {
  City({
     this.id,
     this.createdAt,
     this.updatedAt,
     this.name,
     this.translations,
   //  this.cityId,
  });

  int? id;
  String? createdAt;
  String ?updatedAt;
  String ?name;
  List<CityTranslation> ? translations;
  //int ? cityId;

  factory City.fromJson(Map<String, dynamic> json) => City(
    id: json["id"]?? -1,
    createdAt: json["created_at"].toString(),
    updatedAt: json["updated_at"].toString(),
    name: json["name"]??"",
    translations: List<CityTranslation>.from(json["translations"].map((x) => CityTranslation.fromJson(x))),
   // cityId: json["city_id"]?? -1,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "name": name,
    "translations": List<dynamic>.from(translations!.map((x) => x.toJson())),
   // "city_id": cityId == null ? null : cityId,
  };
}
class Regin {
  Regin({
     this.id,
     this.createdAt,
     this.updatedAt,
     this.name,
     this.translations,
    this.cityId,
  });

  int? id;
  String? createdAt;
  String ?updatedAt;
  String ?name;
  List<ReginTranslation>? translations;
  int ? cityId;

  factory Regin.fromJson(Map<String, dynamic> json) => Regin(
    id: json["id"]?? -1,
    createdAt: json["created_at"]??"",
    updatedAt: json["updated_at"]??"",
    name: json["name"]??"",
    translations: List<ReginTranslation>.from(json["translations"].map((x) => ReginTranslation.fromJson(x))),
    cityId: json["city_id"]?? -1,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "name": name,
    "translations": List<dynamic>.from(translations!.map((x) => x.toJson())),
    "city_id": cityId ,
  };
}

class CityTranslation {
  CityTranslation({
    required this.locale,
    required this.name,
  });

  String locale;
  String name;

  factory CityTranslation.fromJson(Map<String, dynamic> json) => CityTranslation(
    locale: json["locale"]??"",
    name: json["name"]??"",
  );

  Map<String, dynamic> toJson() => {
    "locale": locale,
    "name": name,
  };
}
class ReginTranslation {
  ReginTranslation({
    required this.locale,
    required this.name,
  });

  String locale;
  String name;

  factory ReginTranslation.fromJson(Map<String, dynamic> json) => ReginTranslation(
    locale: json["locale"]??"",
    name: json["name"]??"",
  );

  Map<String, dynamic> toJson() => {
    "locale": locale,
    "name": name,
  };
}


class Ordermethod {
  Ordermethod({
    required this.id,
    required this.titleEn,
      required this.titleAr,
    required this.createdAt,
     required this.updatedAt,
    required this.image,
    required this.pivot,
  });

  int id;
  String titleEn;
  String titleAr;
  DateTime createdAt;
  DateTime updatedAt;
  String image;
  Pivot pivot;

  factory Ordermethod.fromJson(Map<String, dynamic> json) => Ordermethod(
    id: json["id"],
    titleEn: json["title_en"],
    titleAr: json["title_ar"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    image: json["image"],
    pivot: Pivot.fromJson(json["pivot"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title_en": titleEn,
    "title_ar": titleAr,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "image": image,
    "pivot": pivot.toJson(),
  };
}

class Pivot {
  Pivot({
    required this.vendorId,
    required this.methodId,
  });

  String vendorId;
  String methodId;

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
    vendorId: json["vendor_id"],
    methodId: json["method_id"],
  );

  Map<String, dynamic> toJson() => {
    "vendor_id": vendorId,
    "method_id": methodId,
  };
}

class Time {
  Time({
    required this.id,
    required  this.startTime,
    required  this.endTime,
    required this.createdAt,
    required  this.updatedAt,
    required this.duration,
  });

  int id;
  String startTime;
  String endTime;
  String createdAt;
  String updatedAt;
  String duration;

  factory Time.fromJson(Map<String, dynamic> json) => Time(
    id: json["id"],
    startTime: json["start_time"],
    endTime: json["end_time"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    duration: json["duration"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "start_time": startTime,
    "end_time": endTime,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "duration": duration,
  };
}

class VendorTranslation {
  VendorTranslation({
    required this.id,
    required  this.vendorId,
    required this.locale,
    required this.name,
    this.description,
  });

  int id;
  int vendorId;
  String locale;
  String name;
  String? description;

  factory VendorTranslation.fromJson(Map<String, dynamic> json) => VendorTranslation(
    id: json["id"],
    vendorId: json["vendor_id"],
    locale: json["locale"],
    name: json["name"],
    description: json["description"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "vendor_id": vendorId,
    "locale": locale,
    "name": name,
    "description": description,
  };
}

class Vendordeliverycharge {
  Vendordeliverycharge({
    required this.id,
    required  this.vendorId,
    required this.area,
    required this.deliveryCharge,
    required this.createdAt,
    required this.updatedAt,
      this.areaFrom,
  });

  int id;
  int vendorId;
  String area;
  String deliveryCharge;
  DateTime createdAt;
  DateTime updatedAt;
  String? areaFrom;

  factory Vendordeliverycharge.fromJson(Map<String, dynamic> json) => Vendordeliverycharge(
    id: json["id"],
    vendorId: json["vendor_id"],
    area: json["area"],
    deliveryCharge: json["delivery_charge"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    areaFrom: json["area_from"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "vendor_id": vendorId,
    "area": area,
    "delivery_charge": deliveryCharge,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "area_from": areaFrom,
  };
}
