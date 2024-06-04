import 'package:flutter/material.dart';

class Common {
  static TextSpan getPolicyLink(
      {required BuildContext context, required String text}) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
