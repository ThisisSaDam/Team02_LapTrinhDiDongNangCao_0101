import 'package:flutter/material.dart';
import 'package:flutter_provider_shopping_cart/screens/widgets/carousel.dart';
import 'package:flutter_provider_shopping_cart/screens/widgets/carousel_body.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          Text('Fashion Shop', style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: size.width * 0.050,
            letterSpacing: 0.5,
          )),
          const Padding(padding: EdgeInsets.all(10)),
          const Carousel(),
        ],
      ),
    );
  }
}
