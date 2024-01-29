import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'views/EventPage.dart';
import 'views/artistspage.dart';
import 'views/contactpage.dart';
import 'views/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          AnimatedCircularContainer(
            onTap: () {
              _pageController.animateToPage(
                0, // HomePage'in index'i
                duration: Duration(milliseconds: 200),
                curve: Curves.bounceInOut,
              );
            },
            isActive: _currentPageIndex == 0,
            child: SvgPicture.asset(
              'assets/svg/hopulogo.svg',
              color: Colors.white,
              width: MediaQuery.of(context).size.width / 7,
              height: MediaQuery.of(context).size.width / 7,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNavItem(0, 'Home'),
                buildNavItem(1, 'Events'),
                buildNavItem(2, 'Artists'),
                buildNavItem(3, 'Contact'),
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
                HomePage(onSeeAllEventsPressed: () { _pageController.animateToPage(
                      1, // EventPage'in index'i
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
 },),
                EventPage(),
                ArtistsPage(),
                ContactPage(),
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
        padding: EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: _currentPageIndex == index ? Colors.red : Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width * 0.018,
          ),
        ),
      ),
    );
  }
}

class AnimatedCircularContainer extends StatefulWidget {
  final Widget child;
  final bool isActive;
  final VoidCallback onTap;

  AnimatedCircularContainer({
    required this.child,
    required this.isActive,
    required this.onTap,
  });

  @override
  _AnimatedCircularContainerState createState() =>
      _AnimatedCircularContainerState();
}

class _AnimatedCircularContainerState
    extends State<AnimatedCircularContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween<double>(begin: 0.0, end: 0.2).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
        _animate();
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.isActive
                  ? Colors.grey.withOpacity(_animation.value)
                  : null,
            ),
            child: ClipOval(
              child: widget.child,
            ),
          );
        },
      ),
    );
  }

  void _animate() {
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
