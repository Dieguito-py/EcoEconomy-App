import 'package:flutter/material.dart';


class HomePageButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String inputTitle;
  final String assetRout;
  final int hexColor;
  final double assetHeight;
  final double assetWidth;
  const HomePageButton({super.key, required this.inputTitle, required this.onPressed, required this.assetRout, required this.hexColor, required this.assetHeight, required this.assetWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 159,
        width: 162,
        child: InkWell(
          onTap: onPressed,
          child: 
            Stack(
              children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          decoration:BoxDecoration(
                            color: Color(hexColor),
                            borderRadius: const BorderRadius.all(Radius.circular(25))
                          ),
                          height: 126,
                          width: 132,
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.75, -1.44),
                                child: Image.asset('assets/images/Group 36991.png',
                                height: 100,
                                width: 100,
                                fit: BoxFit.fitWidth,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.60, 0.77),
                                child: Text(
                                  inputTitle,
                                  style: const TextStyle(
                                    fontFamily: 'Blacksans',
                                    fontSize: 19,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.77, 0.85),
                                child: Icon(Icons.arrow_forward,
                                color: Colors.white,
                                size: 27,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.70, -0.99),
                    child: Image.asset(
                      assetRout,
                      width: assetWidth,
                      height: assetHeight,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
              ],
            ),
          ),
      );
  }
}