import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: TextStyle(fontSize: 14),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        info[index]['message'].toString(),
                        style: TextStyle(fontSize: 9),
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                    ),
                    trailing: Text(
                      info[index]["time"].toString(),
                      style: TextStyle(fontSize: 7),
                    ),
                  ),
                ),
                Divider(
                  color: dividerColor,
                  indent: 85,
                )
              ],
            ),
          );
        },
        itemCount: info.length,
      ),
    );
  }
}
