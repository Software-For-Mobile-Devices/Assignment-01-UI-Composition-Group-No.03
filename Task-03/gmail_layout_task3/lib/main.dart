import 'package:flutter/material.dart';

void main() {
  runApp(GmailClone());
}

class GmailClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GmailHome(),
    );
  }
}

class GmailHome extends StatelessWidget {
  final List<Map<String, dynamic>> emails = [
    {
      "avatar": "G",
      "color": Colors.orange,
      "sender": "Google Maps Timeline",
      "subject": "Metallic, your January update",
      "body": "This Timeline email is an automated sum...",
      "date": "6 Feb",
      "isStarred": false,
    },
    {
      "avatar": "I",
      "color": Colors.blue,
      "sender": "itch.io",
      "subject": "securas released a new game: GPS Sim...",
      "body": "Hey Metallic Fist Digital Limited, someon...",
      "date": "31 Jan",
      "isStarred": false,
    },
    {
      "avatar": "📌",
      "color": Colors.green,
      "sender": "Promotions",
      "subject": "itch.io, Google Account",
      "body": "",
      "date": "36 new",
      "isStarred": false,
      "isPromotion": true,
    },
    {
      "avatar": "G",
      "color": Colors.green,
      "sender": "Google Play | Apps & Games",
      "subject": "Metallic Fist | best apps from 2020, spot...",
      "body": "What's new on Android and Google Play...",
      "date": "26 Jan",
      "isStarred": false,
    },
    {
      "avatar": "A",
      "color": Colors.purple,
      "sender": "Amazon Web Services",
      "subject": "Last 2 days | Register now for AWS Build...",
      "body": "21 January 2021 | Last chance to register...",
      "date": "19 Jan",
      "isStarred": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.menu, color: Colors.black54),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Search in emails",
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/50'), // Replace with actual profile image
                  radius: 16,
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
