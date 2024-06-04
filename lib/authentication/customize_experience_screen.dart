import 'package:assignment_11/authentication/widgets/auth_button.dart';
import 'package:assignment_11/common/common.dart';
import 'package:assignment_11/common/settings.dart';
import 'package:assignment_11/common/twitter_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomizeExperienceScreen extends StatefulWidget {
  const CustomizeExperienceScreen({super.key});

  @override
  State<CustomizeExperienceScreen> createState() =>
      _CustomizeExperienceScreenState();
}

class _CustomizeExperienceScreenState extends State<CustomizeExperienceScreen> {
  bool _switchValue = false;

  void _onChanged(bool? value) {
    setState(() {
      _switchValue = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TwitterAppBar(context, false),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Settings.authPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Gap(28),
                    const Text(
                      "Customize your experience",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Gap(28),
                    const Text(
                      "Track where you see Twitter content across the web",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Gap(18),
                    Row(
                      children: [
                        const Flexible(
                          child: Text(
                            Settings.customizeText,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        CupertinoSwitch(
                          value: _switchValue,
                          onChanged: (value) => _onChanged(value),
                        )
                      ],
                    ),
                    const Gap(28),
                    RichText(
                      text: TextSpan(
                        text: "By signing up, you agree to our ",
                        style: const TextStyle(
                          color: Colors.black54,
                        ),
                        children: [
                          Common.getPolicyLink(
                              context: context, text: "Terms of Servive"),
                          const TextSpan(text: ", "),
                          Common.getPolicyLink(
                              context: context, text: "Privacy Policy"),
                          const TextSpan(text: ", and "),
                          Common.getPolicyLink(
                              context: context, text: "Cookie Use"),
                          const TextSpan(
                            text:
                                ". Twitter may use your contact information, including your email address and phone number for purposes outlined in our Privacy Policy. ",
                          ),
                          Common.getPolicyLink(
                              context: context, text: "Learn more"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              AuthButton(
                icon: null,
                text: "Next",
                boxColor: _switchValue ? Colors.black : Colors.black54,
                textColor: _switchValue ? Colors.white : Colors.grey,
                onTap: _switchValue ? null : null,
              ),
              const Gap(12),
            ],
          ),
        ),
      ),
    );
  }
}
