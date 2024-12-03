import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widget/contact_list.dart';

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
              // web profile bar
              //  web search bar
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
        )
      ],
    ));
  }
}
