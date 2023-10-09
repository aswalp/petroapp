import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petroapp/extension/extension.dart';
import 'package:petroapp/providers/passwordprovider.dart';
import 'package:petroapp/util/colors.dart';
import 'package:petroapp/view/auditpage/auditpage.dart';
import 'package:petroapp/view/homepage/homepage.dart';
import 'package:petroapp/view/profilepage/profilepage.dart';

class MainHomePage extends ConsumerWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int page = ref.watch(navigationProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
            width: context.responsiveWidth(150),
            height: context.responsiveHeight(40),
            child: Image.asset(
              "assets/icons/petroImage.png",
              fit: BoxFit.contain,
            )),
      ),
      body: SingleChildScrollView(
          child: page == 0
              ? const HomePage()
              : page == 1
                  ? const Auditpage()
                  : const ProfilePage()),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primerycolor,
          currentIndex: ref.watch(navigationProvider),
          onTap: (value) {
            ref.read(navigationProvider.notifier).state = value;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "home",
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined),
              label: "Audit",
              activeIcon: Icon(Icons.bar_chart),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: "Profile",
              activeIcon: Icon(Icons.person_2),
            ),
          ]),
      floatingActionButton: page == 2
          ? FloatingActionButton.extended(
              backgroundColor: Colors.red,
              onPressed: () {},
              label: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            )
          : null,
    );
  }
}
