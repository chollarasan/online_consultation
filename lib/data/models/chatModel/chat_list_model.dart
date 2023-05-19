// To parse this JSON data, do
//
//     final chatListmodel = chatListmodelFromJson(jsonString);

import 'dart:convert';

import 'package:online_consultation_changes/data/models/userModel/user_model.dart';

List<ChatListModel> chatListModelFromJson(String str) =>
    List<ChatListModel>.from(
        json.decode(str).map((x) => ChatListModel.fromJson(x)));

String chatListModelToJson(List<ChatListModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ChatListModel {
  String? id;
  UserModel? sender;
  Doctor? reciever;
  Chat? chat;

  ChatListModel({
    this.id,
    this.sender,
    this.reciever,
    this.chat,
  });

  factory ChatListModel.fromJson(Map<String, dynamic> json) => ChatListModel(
        id: json["id"],
        sender:
            json["sender"] == null ? null : UserModel.fromJson(json["sender"]),
        reciever:
            json["reciever"] == null ? null : Doctor.fromJson(json["reciever"]),
        chat: json["chat"] == null ? null : Chat.fromJson(json["chat"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sender": sender?.toJson(),
        "reciever": reciever?.toJson(),
        "chat": chat?.toJson(),
      };
}

class Chat {
  String? id;
  String? lastMsg;
  String? lastMsgTime;
  int? unreadCount;

  Chat({
    this.id,
    this.lastMsg,
    this.lastMsgTime,
    this.unreadCount,
  });

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        id: json["id"],
        lastMsg: json["last_msg"],
        lastMsgTime: json["last_msg_time"],
        unreadCount: json["unread_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "last_msg": lastMsg,
        "last_msg_time": lastMsgTime,
        "unread_count": unreadCount,
      };
}
