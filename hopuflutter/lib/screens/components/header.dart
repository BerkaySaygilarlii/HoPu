import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../model.dart/responsive.dart';
import 'menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // final Size _size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          // it  display only on mobile and tab
          //not working
      
          if (!Responsive.isDesktop(context))
            Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon:const  Icon(Icons.menu),color: kPrimaryColor,)),
          Container(
            width: 120,
            height: 80,
            child: SvgPicture.asset(
              "assets/images/hopulogo.svg",
              fit: BoxFit.cover,
              color: kSecondaryColor
              ),
          ),          
          
          Spacer(),
          //menu
          if (Responsive.isDesktop(context)) HeaderWebMenu(),
      
        ],
      ),
    );
  }
}
