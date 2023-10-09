import 'package:flutter/material.dart';

class CustamTextField extends StatelessWidget {
  const CustamTextField({
    super.key,
    required this.hinttext,
    this.prefixixon,
    this.suffixicon,
    this.passwordhide = false,
    this.controller,
  });

  final String hinttext;
  final Widget? prefixixon;
  final Widget? suffixicon;
  final bool passwordhide;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: passwordhide,
      decoration: InputDecoration(
          prefixIcon: prefixixon,
          suffixIcon: suffixicon,
          hintText: hinttext,
          hintStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w300, color: Colors.grey),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          )),
    );
  }
}
