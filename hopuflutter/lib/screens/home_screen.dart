// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hopuflutter/screens/components/homebody.dart';


import '../../constants.dart';
import 'components/header_container.dart';
import 'components/menu.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  
  @override
  Widget build(BuildContext context) {
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
                    fit: BoxFit.cover,
                    color: kSecondaryColor,
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
                    HomeBody()
                    // //footer
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // Footer(),
                    // //now we make our website responsive
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
