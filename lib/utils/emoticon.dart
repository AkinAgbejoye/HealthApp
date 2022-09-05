import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Emoticon extends StatelessWidget {
  final String emoticonface;
  const Emoticon({Key? key, required this.emoticonface}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.blue[600]),
        padding: const EdgeInsets.all(16),
        child: Center(
            child: Text(
          emoticonface,
          style: TextStyle(fontSize: 28),
        )));
  }
}
