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
              Expanded(child: ChatList()),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    color: dividerColor,
                  )),
                  color: chatBarMessage,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file_outlined,
                          color: Colors.grey,
                        )),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 15, top: 6, bottom: 5),
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: "Type a message ",
                                fillColor: searchBarColor,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                contentPadding: EdgeInsets.only(left: 20))),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mic),
                      color: Colors.grey,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
