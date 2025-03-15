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
