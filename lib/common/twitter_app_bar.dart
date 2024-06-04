import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterAppBar extends AppBar {
  final BuildContext context;
  final bool isCancel;

  TwitterAppBar(this.context, this.isCancel, {super.key})
      : super(
          leading: isCancel
              ? TextButton(
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                )
              : null,
          leadingWidth: MediaQuery.of(context).size.width / 4,
          title: const FaIcon(
            FontAwesomeIcons.twitter,
            size: 38,
          ),
          backgroundColor: Colors.white,
          foregroundColor: Theme.of(context).primaryColor,
          elevation: 0,
        );
}
