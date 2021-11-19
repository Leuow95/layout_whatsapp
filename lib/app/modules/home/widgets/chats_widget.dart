import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get.dart';
import 'package:layout_whatsapp/app/modules/home/chats_controller.dart';

class Chats extends StatelessWidget {
  final controller = Get.find<ChatsController>();

  Chats({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chat(
      messages: this.controller.messages,
      onSendPressed: this.controller.handleSendPressed,
      user: this.controller.user,
    );
  }
}
