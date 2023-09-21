// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:redivivus_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0, -1),
          child:  Container(
            height: MediaQuery.of(context).size.height / 2 + 49 ,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter ,
                end: Alignment.bottomCenter,
                colors:  const [
                  Color(0xFF288DEB),
                  Color.fromARGB(255, 146, 202, 255),
              ],
              ),
            ),
            child: Center(
              child: Image.asset(
              'assets/images/Design.png',
              width: 225.0,
              height: 306.0,
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0, 1.01),
          child: Container(
            // padding: EdgeInsets.fromLTRB(38, 14, 11, 69),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(49.0),
                topRight: Radius.circular(49.0),
              ),
            boxShadow: const [BoxShadow(
              color: Colors.black,
              offset: Offset(0,12),
              blurRadius: 14
            )]
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.55, -0.92),
                  child: Text('Bem-vindo ao',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color (0xFF3A5A40),
                    fontFamily: 'Blacksans',
                    fontWeight: FontWeight.normal,
                    fontSize: 45,
                    height: 1.5,
                  ),),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.55, -0.67),
                  child: Text('App Redivivus',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color (0xFF7F4F24),
                    fontFamily: 'Blacksans',
                    fontWeight: FontWeight.normal,
                    fontSize: 45,
                    height: 1.5,
                  ),),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.55, -0.07),
                  child: Text('Transformando lixo em \nrecursos, juntos podemos\nfazer a diferença!',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color (0xFF588157),
                    fontFamily: 'Blacksans Slin',
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                    height: 1.2,
                  ),),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.66, 0.77),
                  child: MaterialButton(
                    height: 55,
                    minWidth: 158,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    color: Color (0xFF588157),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        bottomLeft: Radius.circular(35)
                      ),
                    ),
                    padding: EdgeInsets.all(16),
                    textColor: Color.fromARGB(255, 255, 255, 255),
                    child: Text(
                      'Entrar',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Blacksans Slin',
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.68, 0.77),
                  child: MaterialButton(
                    height: 55,
                    minWidth: 158,
                    onPressed: () {
                      print('Inscrever-se');
                    },
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      ),
                      side: BorderSide(color: Color (0xFF588157), width: 3)
                    ),
                    padding: EdgeInsets.all(16),
                    textColor: Color (0xFF588157),
                    child: Text(
                      'Inscrever-se',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Blacksans Slin',
                      ),
                    ),
                  ),
                )
              ],
            )
            ),
            )
      ],
    ),
      );
  }
}