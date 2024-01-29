import 'package:flutter/material.dart';
import 'package:hopuflutter/views/pasteventspage.dart';
import 'package:hopuflutter/views/upcomingeventpage.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/20,),
          Container(
            height: screenSize.height * 0.1,
            color: Colors.black, // App bar altındaki renk
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNavItem(0, 'Upcoming Events'),
                buildNavItem(1, 'Past Events'),
                
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: [
                UpcomingEventsPage(),
                PastEventsPage()
              ],
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
      color: _currentPageIndex == index ? Colors.red : Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: MediaQuery.of(context).size.width * 0.02,
    ),
  ),
  SizedBox(height: MediaQuery.of(context).size.width * 0.005), // Adjust the spacing
  Container(
    height: MediaQuery.of(context).size.width * 0.001, // Adjust the height
    width: MediaQuery.of(context).size.width * 0.25, // Adjust the width as needed
    color: _currentPageIndex == index ? Colors.red : Colors.transparent,
  ),
],

      ),
    ),
    );
  }
}
