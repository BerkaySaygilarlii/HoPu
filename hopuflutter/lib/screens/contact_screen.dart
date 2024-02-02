// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hopuflutter/screens/components/contactbody.dart';


import '../../constants.dart';
import 'components/header_container.dart';
import 'components/menu.dart';


class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  
  
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
                    ContactBody()
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
