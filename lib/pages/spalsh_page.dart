import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((_) => Navigator.of(context).pushReplacementNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: const Color(0xFFFFFBEF),
      child: Stack(
        children:const [
          Align(
            alignment: AlignmentDirectional(0, -0.19),
            child: Image(
              image: AssetImage('assets/images/logo_splash.png'),
              height: 88,
              width: 265,
              )
            ),
          Align(
            alignment: AlignmentDirectional(0, 0.70),
            child: Text(
              'Apoio:',
              style: TextStyle(
                color: Color.fromARGB(255, 53, 53, 53),
                fontFamily: 'Blacksans',
                fontSize: 21,
              ),
            ),
          ),
        Align(
            alignment: AlignmentDirectional(0, 0.80),
            child: Image(
              image: AssetImage('assets/images/sicredi-logo.png'),
              height: 34,
              width: 141,
              )
            ),
        ],
      ),
    ),
    );
    
    
  }
}



      // color: Colors.green.shade50,
      // child: const Center(
      //   child: CircularProgressIndicator(
      //     color: Colors.green,
      //   ),
      // ),