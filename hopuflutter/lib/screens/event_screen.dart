// ignore_for_file: prefer_const_constructors
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hopuflutter/screens/components/eventbody.dart';
import '../../constants.dart';
import 'components/header_container.dart';
import 'components/menu.dart';


class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  
  
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
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       
                         AutoSizeText(
                                 "EVENTS",
                                   textAlign: TextAlign.center,
                         
                                   maxLines: 1,
                                   style: TextStyle(
                                     fontSize: 35,
                                     fontWeight: FontWeight.bold,
                                     color: kSecondaryColor,
                                     
                                   ),
                                 ),
                       ],
                     ),
                    // //body
                    EventBody(),
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
