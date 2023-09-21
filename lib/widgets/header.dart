
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 33, 22, 11),
      child: SizedBox(
          width: 341,
          height: 69,
          // color: Colors.green,
          child: Stack(
            children: const [
              Align(
                alignment: AlignmentDirectional(-0.99, -0.77),
                child: Text('Olá Anna',
                style: TextStyle(
                  color: Color(0xFFA3B18A),
                  fontFamily: 'Blacksans',
                  fontSize: 22
                ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.99, 0.61),
                child: Text('Bom Dia!',
                style: TextStyle(
                  color: Color(0xFF7F4F24),
                  fontFamily: 'Blacksans',
                  fontSize: 32
                ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.99, 0.22),
                child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/42e.jpg'),
                radius: 26,
                ),
              ),
            ],
          ),
        ),
    );
  }
}