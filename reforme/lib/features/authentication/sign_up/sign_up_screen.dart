import 'package:flutter/material.dart';
import 'package:reforme/constants/gaps.dart';
import 'package:reforme/constants/sizes.dart';
import 'package:reforme/features/authentication/widgets/button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String id = '';
  String password = '';
  String phoneNum = '';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: Sizes.size24,
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
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size20,
          vertical: Sizes.size16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              '회원가입',
              style: TextStyle(
                fontSize: Sizes.size40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '아이디',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Sizes.size20,
                    ),
                  ),
                  Stack(
                    children: [
                      TextFormField(
                        onSaved: (newValue) {
                          id = newValue!;
                        },
                      ),
                      Positioned(
                        right: width / 50,
                        bottom: height / 70,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(Sizes.size8)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Sizes.size12,
                              vertical: Sizes.size4,
                            ),
                            child: Text(
                              '중복확인',
                              style: TextStyle(color: Colors.black38),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '비밀번호',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: Sizes.size20,
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: '8~30자리, 영어/특문/숫자 조합',
                  ),
                  onSaved: (newValue) {
                    password = newValue!;
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '비밀번호 확인',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: Sizes.size20,
                  ),
                ),
                TextFormField(
                  onSaved: (newValue) {
                    password = newValue!;
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '휴대폰 번호',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: Sizes.size20,
                  ),
                ),
                Stack(
                  children: [
                    TextFormField(
                      onSaved: (newValue) {
                        phoneNum = newValue!;
                      },
                    ),
                    Positioned(
                      right: width / 50,
                      bottom: height / 70,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(Sizes.size8)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Sizes.size12,
                            vertical: Sizes.size4,
                          ),
                          child: Text(
                            '인증번호 받기',
                            style: TextStyle(color: Colors.black38),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '인증번호',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: Sizes.size20,
                  ),
                ),
                TextFormField(
                  onSaved: (newValue) {
                    phoneNum = newValue!;
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.check_box_outlined),
                        Gaps.h5,
                        Text(
                          '[필수] 만 14세 이상이며 모두 동의합니다.',
                          style: TextStyle(
                            fontSize: Sizes.size16,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz_rounded),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.check_box_outlined),
                        Gaps.h5,
                        Text(
                          '[선택] 광고성 정보 수신에 모두 동의합니다.',
                          style: TextStyle(
                            fontSize: Sizes.size16,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz_rounded),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Sizes.size28),
                  child: GestureDetector(
                      onTap: () {},
                      child: const Button(buttonText: 'Continue')),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: Sizes.size16,
                      ),
                    ),
                    Gaps.h5,
                    Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: Sizes.size16,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
