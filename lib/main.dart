import 'package:flutter/material.dart';
import 'package:redivivus_app/pages/login_page.dart';
import 'package:redivivus_app/pages/spalsh_page.dart';

main() {

runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp
({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Colors.green,
        primarySwatch: Colors.brown
      ),
      initialRoute: '/splash',
      routes: {
        '/splash':(_) => const SplashPage(),
        '/login':(_) => const LoginPage(),
      },
      home: const LoginPage()
      );
  }
}