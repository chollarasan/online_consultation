import 'package:flutter/services.dart';
import 'package:online_consultation_changes/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../../data/models/chatModel/chat_list_model.dart';

class ChatController extends GetxController {
  ChatController();

  TextEditingController searchController = TextEditingController();
  // Rx<ChatModel> chatModelObj;
  RxList<ChatListModel> chatList =  RxList<ChatListModel>.empty(growable: true);


  @override
  void onInit() {
    super.onInit();
    _getChatList();
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  _getChatList() async {
    var chatListJson =  await rootBundle
        .loadString('assets/json/chat_list_json.json');
    chatList.value = chatListModelFromJson(chatListJson);
  }
}
