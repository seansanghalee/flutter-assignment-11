import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final Color boxColor;
  final Color textColor;
  final Function? onTap;

  const AuthButton({
    super.key,
    required this.icon,
    required this.text,
    required this.boxColor,
    required this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap != null ? () => onTap!(context) : () {},
      child: Container(
        decoration: BoxDecoration(
          // color: disabled ? Colors.grey : boxColor,
          color: boxColor,
          borderRadius: BorderRadius.circular(100),
          border: boxColor == Colors.black
              ? const Border()
              : Border.all(color: Colors.black12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // icon ?? const SizedBox(),
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(
                  right: 12,
                ),
                child: FaIcon(
                  icon,
                  size: 24,
                  color: Colors.black,
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: Text(
                text,
                style: TextStyle(
                  // color: disabled ? Colors.grey : textColor,
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
