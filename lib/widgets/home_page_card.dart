import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 338,
      height: 188,
      child: Stack(
        children: [
          Positioned(top: 33, left: 0,
          child: Container(
            width: 338,
            height: 144,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Color(0xFF3A5A40)
            ),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(1.04, 0.66),
                  child: Image.asset(
                    'assets/images/Group 36991.png',
                    width: 143.7,
                    height: 143,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.78, 1.47),
                  child: FloatingActionButton(
                    backgroundColor: const Color(0xFF95AF66),
                    onPressed: () {
                      // print("apertou o mais");
                    },
                    child: const Icon(Icons.add, size: 38,),
                    )
                ),
                    Align(
                      alignment: const AlignmentDirectional(-0.79, -0.76),
                      child:RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Color(0xFFA3B18A),
                            fontFamily: "Blacksans",
                            fontSize: 16
                          ),
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.monetization_on_outlined, size: 19,
                              color: Color(0xFFA3B18A),),
                            ),
                            TextSpan(
                              text: " Seus Ecocoins:",
                            )
                          ],
                        ),
                      ),
                    ),
                    const Align(
                      alignment: AlignmentDirectional(-0.79, -0.09),
                      child: Text('3,409.00', 
                      style: TextStyle(
                        fontFamily: 'Blacksans',
                        fontSize: 36,
                        color: Colors.white
                      )),
                    ),

                    ],
                    ),
                  ),
                ),
                Align(
                alignment: const AlignmentDirectional(1.11, 0.08),
                child: Image.asset(
                  'assets/images/image.png',
                  width: 126.4,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
        ],
      )
    );
  }
}