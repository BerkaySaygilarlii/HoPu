import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PastEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardWidget(
          eventPhoto: 'assets/svg/hopulogo.svg',
          eventDate: 'May 15, 2024',
          eventLocation: 'Event Location 0',
          eventName: 'Event 0',
          artistName: 'Artist 0',
        ),
        CardWidget(
          eventPhoto: 'assets/svg/hopulogo.svg',
          eventDate: 'May 15, 2024',
          eventLocation: 'Event Location 1',
          eventName: 'Event 1',
          artistName: 'Artist 1',
        ),
        CardWidget(
          eventPhoto: 'assets/svg/hopulogo.svg',
          eventDate: 'May 15, 2024',
          eventLocation: 'Event Location 2',
          eventName: 'Event 2',
          artistName: 'Artist 2',
        ),
        CardWidget(
          eventPhoto: 'assets/svg/hopulogo.svg',
          eventDate: 'May 15, 2024',
          eventLocation: 'Event Location 3',
          eventName: 'Event 3',
          artistName: 'Artist 3',
        ),
        // İhtiyacınıza göre daha fazla CardWidget ekleyebilirsiniz
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  final String eventPhoto;
  final String eventDate;
  final String eventLocation;
  final String eventName;
  final String artistName;

  CardWidget({
    required this.eventPhoto,
    required this.eventDate,
    required this.eventLocation,
    required this.eventName,
    required this.artistName,
  });

   @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      color: Colors.black,
      child: Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          FittedBox(
            child: SvgPicture.asset(
              eventPhoto,
              height: MediaQuery.of(context).size.width * 0.15, // 15% of screen width
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      eventDate,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.015, // 4% of screen width
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Text(
                      eventLocation,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.015, // 4% of screen width
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                Row(
                  children: [
                    Text(
                      eventName,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.025, // 5% of screen width
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Text(
                      'By $artistName',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.025, // 4% of screen width
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
