// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../constants.dart';
import '../model.dart/artist_model.dart';
import 'components/artist_card.dart';
import 'components/header_container.dart';
import 'components/menu.dart';


class ArtistScreen extends StatefulWidget {
  const ArtistScreen({Key? key}) : super(key: key);

  @override
  _ArtistScreenState createState() => _ArtistScreenState();
}

class _ArtistScreenState extends State<ArtistScreen> {
  
  
  @override
  Widget build(BuildContext context) {
    // final Size _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              child: Center(
                child: Container(
          width: 120,
          height: 80,
          child: SvgPicture.asset(
            "assets/images/hopulogo.svg",
            fit: BoxFit.fill,
            ),
        ), 
              ),
            ),
            MobMenu()
          ],
        ),
      ),
      body: Column(
        children: [
          HeaderContainer(),
          Expanded(
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // //body
                    ArtistCardBuilder(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ArtistCardBuilder extends StatelessWidget {
  const ArtistCardBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: products.map((product) {
        return ArtistsCard(
          press: () {},
          product: product,
        );
      }).toList(),
    );
  }
}
