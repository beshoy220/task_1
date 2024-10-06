import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_1/presetation/screens/sign_up_screen.dart';
import 'package:task_1/presetation/screens/sign_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(48),
                      bottomRight: Radius.circular(48),
                    ),
                  ),
                ),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset('assets/pic1.png')),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 42, 16, 24),
                child: Text(
                  'Track Your heart rate & Wellness',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: SvgPicture.asset(
                        'assets/icons/heart.svg',
                        semanticsLabel: 'heart icon',
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 4,
                    child: Text(
                      'Monitor your sleep quality, understand your heart rate and blood oxygen levels.',
                      // softWrap: true,
                      // overflow: TextOverflow.clip,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.50,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 42, 16, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF005B4E)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const SignInScreen(),
                          ));
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 42),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const SignUpScreen(),
                              ));
                        },
                        child: const Text('Sign up'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
