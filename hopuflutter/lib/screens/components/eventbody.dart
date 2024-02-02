import 'package:flutter/material.dart';
import 'package:hopuflutter/constants.dart';

import '../pastevents_screen.dart';
import '../upcomingevent_screen.dart';

class EventBody extends StatefulWidget {
  const EventBody({Key? key}) : super(key: key);

  @override
  State<EventBody> createState() => _EventBodyState();
}

class _EventBodyState extends State<EventBody> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(kPadding, 0, kPadding, 0),
      child: Column(
        children: [
          Container(
            height: kPadding * 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildNavItem(0, 'Upcoming Events'),
                buildNavItem(1, 'Past Events'),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: [
                  UpcomingEventsPage(),
                  PastEventsPage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(int index, String title) {
    return GestureDetector(
      onTap: () {
        _pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: _currentPageIndex == index ? kSecondaryColor : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: kPadding / 1.2,
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: kPadding / 6,
              width: kPadding * 9,
              color: _currentPageIndex == index ? kSecondaryColor : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
