import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.05),
          Text('Get In Touch With Us',
          textAlign: TextAlign.center,
            style: TextStyle(fontSize: MediaQuery.of(context).size.height/12,color: Colors.white,fontWeight: FontWeight.normal),),
          SizedBox(height: MediaQuery.of(context).size.height*0.1),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildContactCard(
                  icon: Icons.account_circle, // Instagram ikonu yerine örnek bir ikon
                  title: 'Instagram',
                  content: '@example_instagram',
                  onTap: () {
                    launch('https://www.instagram.com/example_instagram');
                  },
                  context: context,
                ),
                buildContactCard(
                  icon: Icons.phone,
                  title: 'Phone Number',
                  content: '+1 123-456-7890',
                  onTap: () {
                    // Buraya telefon numarasının aranmasını sağlayan bir işlem ekleyebilirsiniz
                  },
                  context: context,
                ),
                buildContactCard(
                  icon: Icons.email,
                  title: 'Email',
                  content: 'example@example.com',
                  onTap: () {
                    launch('mailto:example@example.com');
                  },
                  context: context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
   Widget buildContactCard({
    required IconData icon,
    required String title,
    required String content,
    required VoidCallback onTap,
    required BuildContext context,
  }) {
    var screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: screenSize.width * 0.04, 
              color: Colors.red,// Icon boyutu ekran genişliğine bağlı olarak ayarlandı
            ),
            SizedBox(width: screenSize.width * 0.01), // Boşluk ekran genişliğine bağlı olarak ayarlandı
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: screenSize.width * 0.025, fontWeight: FontWeight.bold,color: Colors.red),
                ),
                SizedBox(height: screenSize.width * 0.005), // Boşluk ekran genişliğine bağlı olarak ayarlandı
                Text(
                  content,
                  style: TextStyle(fontSize: screenSize.width * 0.02,color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  
}
