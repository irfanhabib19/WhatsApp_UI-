import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class MymessageCard extends StatelessWidget {
  String message;
  String date;
  MymessageCard({super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: messageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, right: 30, left: 10, bottom: 20),
                child: Text(
                  message,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                  child: Row(
                children: [
                  Text(
                    date,
                    style: TextStyle(fontSize: 13, color: Colors.white10),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.done_all,
                    color: Colors.white60,
                    size: 20,
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
