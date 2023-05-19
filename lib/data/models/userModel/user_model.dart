// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? name;
  String? pofileImage;
  String? id;
  List<Appoinment>? appoinments;

  UserModel({
    this.name,
    this.pofileImage,
    this.id,
    this.appoinments,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        pofileImage: json["pofile_image"],
        id: json["id"],
        appoinments: json["appoinments"] == null
            ? []
            : List<Appoinment>.from(
                json["appoinments"]!.map((x) => Appoinment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "pofile_image": pofileImage,
        "id": id,
        "appoinments": appoinments == null
            ? []
            : List<dynamic>.from(appoinments!.map((x) => x.toJson())),
      };
}

class Appoinment {
  String? appoinmentId;
  String? appoinmentDate;
  String? appoinmntTime;
  Doctor? doctor;

  Appoinment({
    this.appoinmentId,
    this.appoinmentDate,
    this.appoinmntTime,
    this.doctor,
  });

  factory Appoinment.fromJson(Map<String, dynamic> json) => Appoinment(
        appoinmentId: json["appoinment_id"],
        appoinmentDate: json["appoinment_date"],
        appoinmntTime: json["appoinmnt_time"],
        doctor: json["doctor"] == null ? null : Doctor.fromJson(json["doctor"]),
      );

  Map<String, dynamic> toJson() => {
        "appoinment_id": appoinmentId,
        "appoinment_date": appoinmentDate,
        "appoinmnt_time": appoinmntTime,
        "doctor": doctor?.toJson(),
      };
}

class Doctor {
  String? id;
  String? name;
  String? about;
  double? experience;
  int? patientsCount;
  String? profileImage;
  String? specification;
  double? rating;
  int? reviewCount;
  bool? available;

  Doctor({
    this.id,
    this.name,
    this.about,
    this.experience,
    this.patientsCount,
    this.profileImage,
    this.specification,
    this.rating,
    this.reviewCount,
    this.available,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        id: json["id"],
        name: json["name"],
        about: json["about"],
        experience: json["experience"]?.toDouble(),
        patientsCount: json["patients_count"],
        profileImage: json["profile_image"],
        specification: json["specification"],
        rating: json["rating"]?.toDouble(),
        reviewCount: json["review_count"],
        available: json["available"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "about": about,
        "experience": experience,
        "patients_count": patientsCount,
        "profile_image": profileImage,
        "specification": specification,
        "rating": rating,
        "review_count": reviewCount,
        "available": available,
      };
}
