import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text('Tin nhắn'),
      ),
    );
  }
}