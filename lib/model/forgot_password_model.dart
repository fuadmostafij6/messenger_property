// To parse this JSON data, do
//
//     final forgotPassModel = forgotPassModelFromJson(jsonString);

import 'dart:convert';

ForgotPassModel forgotPassModelFromJson(String str) => ForgotPassModel.fromJson(json.decode(str));

String forgotPassModelToJson(ForgotPassModel data) => json.encode(data.toJson());

class ForgotPassModel {
  ForgotPassModel({
    this.status,
    this.msg,
    this.description,
  });

  int ?status;
  String? msg;
  String ?description;

  factory ForgotPassModel.fromJson(Map<String, dynamic> json) => ForgotPassModel(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
    description: json["description"] == null ? null : json["description"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
    "description": description == null ? null : description,
  };
}
