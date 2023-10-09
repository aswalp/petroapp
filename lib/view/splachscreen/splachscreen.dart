import 'package:flutter/material.dart';
import 'package:petroapp/extension/extension.dart';
import 'package:petroapp/view/auth/login.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 1)).then((value) {
      context.gotoonetime(LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: context.responsiveHeight(150),
          width: context.responsiveWidth(150),
          child: Image.asset(
            "assets/icons/Picon.png",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
