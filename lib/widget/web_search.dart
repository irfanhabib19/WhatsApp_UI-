import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WebSearch extends StatelessWidget {
  const WebSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.30,
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        )),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: searchBarColor,
                prefix: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.search),
                  ),
                ),
                hintText: "Search for chat",
                hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(21),
                ),
                contentPadding: EdgeInsets.all(10)),
          ),
        ),
      ),
    );
  }
}
