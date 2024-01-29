import 'package:flutter/material.dart';
import 'EventPage.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onSeeAllEventsPressed;

  HomePage({required this.onSeeAllEventsPressed});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Dikeyde ortalamayı ayarlar
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/10),
          Text(
            'Global Talent Agency for Electronic Music',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: MediaQuery.of(context).size.height/12,color: Colors.white),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/10),
          ElevatedButton(
  onPressed: widget.onSeeAllEventsPressed,
  style: ElevatedButton.styleFrom(
    primary: Colors.black, // Butonun arka plan rengi
    onPrimary: Colors.red, // Butonun yazı rengi
    side: BorderSide(color: Colors.red), // Butonun kenarlık rengi
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2.0), // Butonun köşe yarıçapı
    ),
    padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/20, horizontal: MediaQuery.of(context).size.height/20),
    
  ),
  child: Text('See All Events',
  style: TextStyle(fontSize: 25),),
)

        ],
      ),
      ),
    );
  }
}
