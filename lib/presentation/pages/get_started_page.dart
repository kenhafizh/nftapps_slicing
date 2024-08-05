// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/presentation/pages/signup_page.dart';
import 'package:nft_app/presentation/widgets/button_widget.dart';
import 'package:nft_app/presentation/widgets/page_widget.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Loading image from assets/images/ilustrasi.png');

    return PageWidget(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/ilustrasi.png'),

            // Title
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                textAlign: TextAlign.center,
                "Collect NFTs As Your Own Collection",
                style: GoogleFonts.inter(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // sub title
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                textAlign: TextAlign.center,
                "NFT is gonna help us to keep what is belong to us, like forever",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            // Button
            SizedBox(height: 50),
            ButtonWidget(
              text: "Get Started",
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const SignupPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
