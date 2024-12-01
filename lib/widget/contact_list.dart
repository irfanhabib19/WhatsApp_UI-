import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(info[index]['name'].toString()),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                info[index]['message'].toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        },
        itemCount: info.length,
      ),
    );
  }
}
