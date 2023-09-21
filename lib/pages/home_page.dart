import 'package:flutter/material.dart';
import 'package:redivivus_app/pages/store_page.dart';
import 'package:redivivus_app/widgets/header.dart';
import 'package:redivivus_app/widgets/home_page_button.dart';
import 'package:redivivus_app/widgets/home_page_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBEF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const 
            SizedBox(height: 15),
            const Header(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 1,
            ),
            const HomePageCard(),
            SizedBox(
              // color: Colors.cyan,
              height: 25,
              width:MediaQuery.of(context).size.width
            ),
            const SizedBox(
              height: 69,
              width:338,
              child: Align(
                alignment: AlignmentDirectional(-0.99, 0),
                child: Text('Ações',
                  style: TextStyle(
                    color: Color(0xFF936639),
                    fontFamily: 'Blacksans',
                    fontSize: 28
                  ),
                  ),
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [ 
                    HomePageButton(
                      inputTitle: 'Lojas',
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => StorePage()));
                      },
                      assetRout: 'assets/images/shop.png',
                      hexColor: 0xFF588157,
                      assetHeight: 102.4,
                      assetWidth: 98.2
                  ),

                    HomePageButton(
                      inputTitle: 'Trocar',
                      onPressed: () {},
                      assetRout: 'assets/images/troca.png',
                      hexColor: 0xFF3A5A40,
                      assetHeight: 102.4,
                      assetWidth: 98.2
                    ),

                    HomePageButton(onPressed: () {},
                      inputTitle: 'Agendar',
                      assetRout: 'assets/images/calender.png',
                      hexColor: 0xFF518350,
                      assetHeight: 102.4,
                      assetWidth: 108.2,
                    )
                  ],
                ),
              ),
            const SizedBox(
              height: 69,
              width:338,
              child: Align(
                alignment: AlignmentDirectional(-0.99, 0),
                child: Text('Histórico',
                  style: TextStyle(
                    color: Color(0xFF936639),
                    fontFamily: 'Blacksans',
                    fontSize: 28
                  ),
                  ),
                ),
              ),
        ],
        )
      )
    );
  }
}