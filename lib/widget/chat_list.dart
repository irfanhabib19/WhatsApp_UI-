import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widget/myMessage_card.dart';
import 'package:whatsapp_ui/widget/senderMessage_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MymessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        return SendermessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString());
      },
      itemCount: messages.length,
    );
  }
}
