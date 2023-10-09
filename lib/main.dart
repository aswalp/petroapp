import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petroapp/view/splachscreen/splachscreen.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Color(0xff28282B)),
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
                fontSize: 24,
                color: Color(0xff28282B),
                fontWeight: FontWeight.w300),
            elevation: 1,
          )),
      home: const SplachScreen(),
    );
  }
}
