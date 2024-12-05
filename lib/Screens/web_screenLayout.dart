import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widget/chat_list.dart';
import 'package:whatsapp_ui/widget/contact_list.dart';
import 'package:whatsapp_ui/widget/web_chatAppBar.dart';
import 'package:whatsapp_ui/widget/web_profileBar.dart';
import 'package:whatsapp_ui/widget/web_search.dart';

class WebScreenlayout extends StatelessWidget {
  const WebScreenlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Column(
            children: [
              WebProfilebar(),
              WebSearch(),
              ContactsList(),
            ],
          ),
        ),
        // webScreen
        Container(
          width: MediaQuery.of(context).size.width * 0.60,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/backgroundImage.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              WebChatappbar(),
              ChatList(),
            ],
          ),
        )
      ],
    ));
  }
}
