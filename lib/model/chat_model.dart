// To parse this JSON data, do
//
//     final chatModel = chatModelFromJson(jsonString);

import 'dart:convert';

ChatModel chatModelFromJson(String str) => ChatModel.fromJson(json.decode(str));

String chatModelToJson(ChatModel data) => json.encode(data.toJson());

class ChatModel {
  ChatModel({
    this.status,
    this.msg,
    this.description,
    this.conversations,
  });

  int ?status;
  String? msg;
  String ?description;
  List<Conversation> ? conversations;

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
    description: json["description"] == null ? null : json["description"],
    conversations: json["conversations"] == null ? null : List<Conversation>.from(json["conversations"].map((x) => Conversation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
    "description": description == null ? null : description,
    "conversations": conversations == null ? null : List<dynamic>.from(conversations!.map((x) => x.toJson())),
  };
}

class Conversation {
  Conversation({
    this.id,
    this.createdBy,
    this.propertyId,
    this.serviceId,
    this.agentId,
    this.createdAt,
    this.updatedAt,
    this.lastMessage,
    this.title,
    this.seen,
    this.members,
  });

  int ?id;
  String? createdBy;
  dynamic propertyId;
  String ?serviceId;
  dynamic agentId;
  DateTime? createdAt;
  DateTime ?updatedAt;
  String ? lastMessage;
  String ?title;
  String ?seen;
  List<Member> ? members;

  factory Conversation.fromJson(Map<String, dynamic> json) => Conversation(
    id: json["id"] == null ? null : json["id"],
    createdBy: json["created_by"] == null ? null : json["created_by"],
    propertyId: json["property_id"],
    serviceId: json["service_id"] == null ? null : json["service_id"],
    agentId: json["agent_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    lastMessage: json["last_message"] == null ? null : json["last_message"],
    title: json["title"] == null ? null : json["title"],
    seen: json["seen"] == null ? null : json["seen"],
    members: json["members"] == null ? null : List<Member>.from(json["members"].map((x) => Member.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "created_by": createdBy == null ? null : createdBy,
    "property_id": propertyId,
    "service_id": serviceId == null ? null : serviceId,
    "agent_id": agentId,
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    "last_message": lastMessage == null ? null : lastMessage,
    "title": title == null ? null : title,
    "seen": seen == null ? null : seen,
    "members": members == null ? null : List<dynamic>.from(members!.map((x) => x.toJson())),
  };
}

class Member {
  Member({
    this.userId,
    this.seen,
    this.name,
    this.email,
    this.address,
    this.userType,
    this.subscription,
  });

  String ?userId;
  String ?seen;
  String ?name;
  String ?email;
  String ?address;
  String ?userType;
  String ?subscription;

  factory Member.fromJson(Map<String, dynamic> json) => Member(
    userId: json["user_id"] == null ? null : json["user_id"],
    seen: json["seen"] == null ? null : json["seen"],
    name: json["name"] == null ? null : json["name"],
    email: json["email"] == null ? null : json["email"],
    address: json["address"] == null ? null : json["address"],
    userType: json["user_type"] == null ? null : json["user_type"],
    subscription: json["subscription"] == null ? null : json["subscription"],
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId == null ? null : userId,
    "seen": seen == null ? null : seen,
    "name": name == null ? null : name,
    "email": email == null ? null : email,
    "address": address == null ? null : address,
    "user_type": userType == null ? null : userType,
    "subscription": subscription == null ? null : subscription,
  };
}
