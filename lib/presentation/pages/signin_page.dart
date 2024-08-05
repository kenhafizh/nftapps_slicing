// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/presentation/pages/signup_page.dart';
import 'package:nft_app/presentation/widgets/page_widget.dart';

import '../widgets/button_widget.dart';
import '../widgets/input_widget.dart';
import '../widgets/input_widget_password.dart';
import 'discover_page.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _body(),

              // sign in button
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const SignupPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Create new Account',
                    style: GoogleFonts.inter(
                        color: const Color(0xFF909FB4), fontSize: 16),
                  ))
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
                height: 36 / 20),
            ),
          ),

          SizedBox(height: 20),

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
                  InputWidget(lable: 'Email'),
                  InputWidgetPassword(
                    lable: 'Password',
                    isPassword: true,
                  ),

                  // Action
                  const SizedBox(height: 10),
                  Builder(builder: (context) {
                    return ButtonWidget(
                      text: 'Sign in',
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
