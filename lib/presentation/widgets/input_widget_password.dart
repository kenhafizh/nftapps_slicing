import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/constants/color_constant.dart';

class InputWidgetPassword extends StatefulWidget {
  final bool isPassword;
  final String lable;

  const InputWidgetPassword({super.key, this.isPassword = false, required this.lable});

  @override
  State<InputWidgetPassword> createState() => _InputWidgetPasswordState();
}

class _InputWidgetPasswordState extends State<InputWidgetPassword> {
  bool _isPasswordVisible = false;
  


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.lable,
          style: GoogleFonts.inter(
            fontSize: 16,
            color: const Color(0xFF0D1220)
          )
        ),
        const SizedBox(height: 8),
        TextField(
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: const Color(0xFF0D1220),
          ),
          obscureText: widget.isPassword ? !_isPasswordVisible : false,
          decoration: InputDecoration(
              fillColor: const Color(0xFFF7F9FC),
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.transparent)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: ColorConstant.primary)),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: const Color(0xFF0D1220),
                      ),
                    )
                  : null),
                  cursorColor: const Color(0xFF0D1220),
        )
      ],
    );
  }
}
