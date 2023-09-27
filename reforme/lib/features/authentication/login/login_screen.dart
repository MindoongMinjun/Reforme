import 'package:flutter/material.dart';
import 'package:reforme/constants/gaps.dart';
import 'package:reforme/constants/sizes.dart';
import 'package:reforme/features/authentication/widgets/button.dart';
import 'package:reforme/features/authentication/sign_up/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _onSignUpTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Back',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Sizes.size20,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'ID',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: Sizes.size20,
                  ),
                ),
                TextFormField(),
              ],
            ),
            Gaps.v32,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: Sizes.size20,
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                Gaps.v40,
                const Button(buttonText: 'Log in'),
              ],
            ),
            Gaps.v40,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Find Email Address',
                  style: TextStyle(fontSize: Sizes.size16),
                ),
                Transform.translate(
                  offset: Offset(-width / 50, 0),
                  child: const Text(
                    '|',
                    style: TextStyle(fontSize: Sizes.size16),
                  ),
                ),
                const Text(
                  'Find Password',
                  style: TextStyle(fontSize: Sizes.size16),
                ),
              ],
            ),
            Gaps.v40,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: Sizes.size16,
                  ),
                ),
                Gaps.h4,
                GestureDetector(
                  onTap: () => _onSignUpTap(),
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: Sizes.size16,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
