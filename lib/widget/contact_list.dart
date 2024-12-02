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
            title: Text(
              info[index]['name'].toString(),
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                info[index]['message'].toString(),
                style: TextStyle(fontSize: 14),
              ),
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                info[index]['profilePic'].toString(),
              ),
            ),
            trailing: Text(
              info[index]["time"].toString(),
              style: TextStyle(fontSize: 12),
            ),
          );
        },
        itemCount: info.length,
      ),
    );
  }
}