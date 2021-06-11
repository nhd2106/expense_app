import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class AdaptiveButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: () => handler(),
            child: Text(
              text,
            ),
          )
        : TextButton(
            onPressed: () => handler(),
            child: Text(
              text,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          );
  }
}
