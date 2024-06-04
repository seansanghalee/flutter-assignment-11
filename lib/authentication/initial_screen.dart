import 'package:assignment_11/authentication/widgets/auth_button.dart';
import 'package:assignment_11/authentication/create_account_screen.dart';
import 'package:assignment_11/common/common.dart';
import 'package:assignment_11/common/settings.dart';
import 'package:assignment_11/common/twitter_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  void _onCreateAccountTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CreateAccountScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: TwitterAppBar(context, false),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Settings.authPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    Settings.welcomeText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AuthButton(
                      icon: FontAwesomeIcons.google,
                      text: "Continue with Google",
                      boxColor: Colors.white,
                      textColor: Colors.black,
                      onTap: null,
                    ),
                    const Gap(12),
                    const AuthButton(
                      icon: FontAwesomeIcons.apple,
                      text: "Continue with Apple",
                      boxColor: Colors.white,
                      textColor: Colors.black,
                      onTap: null,
                    ),
                    const Gap(12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Expanded(
                          child: Divider(
                            thickness: 1,
                            endIndent: 12,
                            color: Colors.black12,
                          ),
                        ),
                        Text(
                          "or",
                          style: TextStyle(
                            color: Settings.descriptionColor,
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            thickness: 1,
                            indent: 12,
                            color: Colors.black12,
                          ),
                        ),
                      ],
                    ),
                    AuthButton(
                      icon: null,
                      text: "Create account",
                      boxColor: Colors.black,
                      textColor: Colors.white,
                      onTap: _onCreateAccountTap,
                    ),
                    const Gap(18),
                    RichText(
                      text: TextSpan(
                          text: "By signing up, you agree to our ",
                          style: TextStyle(
                              color: Settings.descriptionColor,
                              fontSize: 16,
                              height: 1.5),
                          children: [
                            Common.getPolicyLink(
                                context: context, text: "Terms"),
                            const TextSpan(text: ", "),
                            Common.getPolicyLink(
                                context: context, text: "Privacy Policy"),
                            const TextSpan(text: ", and "),
                            Common.getPolicyLink(
                                context: context, text: "Cookie Use"),
                            const TextSpan(text: ".")
                          ]),
                    ),
                    const Gap(48),
                    RichText(
                      text: TextSpan(
                        text: "Have an account already? ",
                        style: TextStyle(
                          color: Settings.descriptionColor,
                          fontSize: 14,
                        ),
                        children: [
                          Common.getPolicyLink(
                              context: context, text: "Log in"),
                        ],
                      ),
                    ),
                    const Gap(18),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
