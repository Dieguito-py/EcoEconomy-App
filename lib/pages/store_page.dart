import 'package:flutter/material.dart';
import 'package:redivivus_app/widgets/custom_appbar.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(
            title: 'Lojas'
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 350,
            child: TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Pesquisar',
                hintStyle: const TextStyle(
                  fontFamily: 'Blacksans',
                  fontSize: 18,
                ),
                contentPadding: const EdgeInsets.fromLTRB(15, 3, 3, 3),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFF3A5A40),
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFF3A5A40),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Color(0xFF757575),
                  size: 25,
                  // weight: 800,
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}