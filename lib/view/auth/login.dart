import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petroapp/extension/extension.dart';
import 'package:petroapp/providers/passwordprovider.dart';
import 'package:petroapp/services/servicesapi.dart';
import 'package:petroapp/util/colors.dart';
import 'package:petroapp/view/mainhomepage/mainhomepage.dart';

import '../widgets/customtextfield.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({super.key});

  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: context.maxWidth(),
                height: context.responsiveHeight(180),
              ),
              SizedBox(
                  width: context.responsiveWidth(280),
                  height: context.responsiveHeight(110),
                  child: Image.asset(
                    "assets/icons/petroImage.png",
                    fit: BoxFit.contain,
                  )),
              Container(
                margin: EdgeInsets.all(context.responsiveWidth(30)),
                padding: EdgeInsets.all(context.responsiveWidth(20)),
                width: context.maxWidth(),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 3,
                          offset: Offset(1, 3),
                          spreadRadius: 4,
                          color: Color(0x849E9E9E))
                    ]),
                child: Column(
                  children: [
                    CustamTextField(
                      controller: usernamecontroller,
                      hinttext: 'User Name',
                      prefixixon: const Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: context.responsiveHeight(30),
                    ),
                    CustamTextField(
                      controller: passwordcontroller,
                      passwordhide: ref.watch(passwordprovider),
                      hinttext: 'Password',
                      prefixixon: const Icon(
                        Icons.key,
                        color: Colors.grey,
                      ),
                      suffixicon: IconButton(
                          onPressed: () {
                            ref.read(passwordprovider.notifier).state =
                                !ref.read(passwordprovider.notifier).state;
                          },
                          icon: Icon(
                            ref.watch(passwordprovider)
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(
                      height: context.responsiveHeight(20),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primerycolor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            minimumSize: Size(context.responsiveWidth(120),
                                context.responsiveHeight(45))),
                        onPressed: () {
                          progressbar(context);

                          if (usernamecontroller.text != "" &&
                              passwordcontroller.text != "") {
                            Apiservices.authVerfication(
                                    userName: usernamecontroller.text,
                                    password: passwordcontroller.text)
                                .then((value) {
                              Navigator.pop(context);
                              if (value.token != null) {
                                //?geting userdata
                                Apiservices.userdata = value;
                                context.gotoonetime(const MainHomePage());
                              } else {
                                context.showSnackbar(
                                    "Enter Correct username and password");
                              }
                            });
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                    SizedBox(
                      height: context.responsiveHeight(20),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("didn't have an Account",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w300)),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void progressbar(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => const Center(
              child: CircularProgressIndicator(
                color: Color(0xff98c1d9),
              ),
            ));
  }
}
