import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hopuflutter/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(
        "Get in Touch With Us",
          textAlign: TextAlign.center,
          maxLines: 3,
          style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
            
          ),
        ),
        SizedBox(height: kPadding*3,),
            Wrap(
              alignment: WrapAlignment.start,
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
                Spacer(),
                buildContactCard(
                  icon: Icons.phone,
                  title: 'Phone Number',
                  content: '+1 123-456-7890',
                  onTap: () {
                    // Buraya telefon numarasının aranmasını sağlayan bir işlem ekleyebilirsiniz
                  },
                  context: context,
                ),
                Spacer(),
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
          
      ],
    );
  }
  Widget buildContactCard({
    required IconData icon,
    required String title,
    required String content,
    required VoidCallback onTap,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(30),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: kPadding*1.7, 
              color: Colors.red,// Icon boyutu ekran genişliğine bağlı olarak ayarlandı
            ),
            SizedBox(width: kPadding), // Boşluk ekran genişliğine bağlı olarak ayarlandı
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize:kPadding, fontWeight: FontWeight.bold,color: Colors.red),
                ),
                SizedBox(height: 3), // Boşluk ekran genişliğine bağlı olarak ayarlandı
                Text(
                  content,
                  style: TextStyle(fontSize: kPadding,color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}