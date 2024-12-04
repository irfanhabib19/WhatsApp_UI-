import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WebProfilebar extends StatelessWidget {
  const WebProfilebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.40,
      decoration: BoxDecoration(
          border: Border(right: BorderSide(color: dividerColor)),
          color: webAppBarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://tse2.mm.bing.net/th?id=OIP.QfjkckiH__8TBp2Zcg7x2AHaFa&pid=Api&P=0&h=180'),
              radius: 20,
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.comment,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
