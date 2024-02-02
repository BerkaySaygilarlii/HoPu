import 'package:flutter/material.dart';
import 'package:hopuflutter/model.dart/provider.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../model.dart/responsive.dart';
import '../../routes.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderMenu(
          press: () {
            Navigator.pushNamed(context, Routes.home);
          },
          title: "Home",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {
            Navigator.pushNamed(context, Routes.artists);
          },
          title: "Artists",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {
            Navigator.pushNamed(context, Routes.events);
          },
          title: "Events",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {
            Navigator.pushNamed(context, Routes.contact);
          },
          title: "Contact",
        ),
        SizedBox(
          width: kPadding,
        ),
        
      ],
    );
  }
}

class MobFooterMenu extends StatelessWidget {
  const MobFooterMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
            
        HeaderMenu(
            press: () {
              Navigator.pushNamed(context, Routes.home);
            },
            title: "Home",
          ),
          SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {
              Navigator.pushNamed(context, Routes.artists);
            },
            title: "Artists",
          ),
          SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {
              Navigator.pushNamed(context, Routes.events);
            },
            title: "Events",
          ),
          SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {
              Navigator.pushNamed(context, Routes.contact);
            },
            title: "Contact",
          ),
          
      ],
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  
  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    return InkWell(
      onTap: () {
        press();
        pageProvider.setCurrentPage(title.toLowerCase());
      },
      child: Container(
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Responsive.isDesktop(context)
                ? pageProvider.currentPage == title.toLowerCase()
                    ? kSecondaryColor
                    : kPrimaryColor
                : pageProvider.currentPage == title.toLowerCase()
                    ? kSecondaryColor// Change this to the desired color
                    : Colors.black,
        ),
      ),
      ),
    );
  }
}

class MobMenu extends StatefulWidget {
  const MobMenu({Key? key}) : super(key: key);

  @override
  _MobMenuState createState() => _MobMenuState();
}

class _MobMenuState extends State<MobMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderMenu(
            press: () {
              Navigator.pushNamed(context, Routes.home);
            },
            title: "Home",
          ),
          SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {
              Navigator.pushNamed(context, Routes.artists);
            },
            title: "Artists",
          ),
          SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {
              Navigator.pushNamed(context, Routes.events);
            },
            title: "Events",
          ),
          SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {
              Navigator.pushNamed(context, Routes.contact);
            },
            title: "Contact",
          ),
          
        ],
      ),
    );
  }
}
