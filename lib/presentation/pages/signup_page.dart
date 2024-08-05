// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/presentation/pages/discover_page.dart';
import 'package:nft_app/presentation/pages/signin_page.dart';
import 'package:nft_app/presentation/widgets/button_widget.dart';
import 'package:nft_app/presentation/widgets/input_widget.dart';
import 'package:nft_app/presentation/widgets/page_widget.dart';

import '../widgets/input_widget_password.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              _body(),
              // Text('Have Account?'),

              // Sign in
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have account?',
                    style: GoogleFonts.inter(
                      color: const Color(0xFF909FB4),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => SigninPage()),
                      );
                    },
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.inter(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Title
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Start Collecting Amazing ArtWorks',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 26,
                height: 36 / 26,
              ),
            ),
          ),

          SizedBox(height: 40),

          // Form
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  InputWidget(lable: 'Full Name'),
                  InputWidget(lable: 'Email'),
                  InputWidgetPassword(
                    lable: 'Password',
                    isPassword: true,
                  ),

                  // Action
                  const SizedBox(height: 10),
                  Builder(builder: (context) {
                    return ButtonWidget(
                      text: 'Continue',
                      isFullWidth: true,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const DiscoverPage(),
                        ));
                      },
                    );
                  })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
