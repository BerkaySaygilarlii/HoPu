


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArtistsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 5, // Toplam 2 satır olacak şekilde ayarlandı
        itemBuilder: (context, rowIndex) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width*0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Her bir satır için iki sanatçı eklenir
                if (rowIndex == 0) ...[
                  buildArtistCard(
                    context: context,
                    profileImage: 'assets/svg/hopulogo.svg',
                    artistName: 'Berkay Saygilarli',
                    onViewMorePressed: () {
                      print('View More pressed for Artist 1');
                    },
                  ),
                  buildArtistCard(
                    context: context,
                    profileImage: 'assets/svg/hopulogo.svg',
                    artistName: 'Eray Tosun',
                    onViewMorePressed: () {
                      print('View More pressed for Artist 2');
                    },
                  ),
                  buildArtistCard(
                    context: context,
                    profileImage: 'assets/svg/hopulogo.svg',
                    artistName: 'Local Bugra',
                    onViewMorePressed: () {
                      print('View More pressed for Artist 6');
                    },
                  ),
                ] else if (rowIndex == 1) ...[
                  // Sadece 1 sanatçı eklenir
                  buildArtistCard(
                    context: context,
                    profileImage: 'assets/svg/hopulogo.svg',
                    artistName: 'Sanatçı Adı 3',
                    onViewMorePressed: () {
                      print('View More pressed for Artist 3');
                    },
                  ),
                  buildArtistCard(
                    context: context,
                    profileImage: 'assets/svg/hopulogo.svg',
                    artistName: 'Sanatçı Adı 4',
                    onViewMorePressed: () {
                      print('View More pressed for Artist 4');
                    },
                  ),
                  buildArtistCard(
                    context: context,
                    profileImage: 'assets/svg/hopulogo.svg',
                    artistName: 'Sanatçı Adı 5',
                    onViewMorePressed: () {
                      print('View More pressed for Artist 5');
                    },
                  ),
                ]
                  else if(rowIndex == 2)...[
                    buildArtistCard(
                      context: context,
                      profileImage: 'assets/svg/hopulogo.svg',
                      artistName: 'Sanatçı Adı 7',
                      onViewMorePressed: () {
                        print('View More pressed for Artist 7');
                      },
                    ),
                  ]else if(rowIndex == 3)...[
                  // Eklemek istediğiniz başka bir satır varsa buraya ekleyebilirsiniz
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildArtistCard({
    required String profileImage,
    required String artistName,
    required VoidCallback onViewMorePressed,
    required BuildContext context,
  }) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
      decoration: BoxDecoration(
              border: Border.all(color: Colors.red.withOpacity(0.3)),
              borderRadius: BorderRadius.circular(10),  
              // Her Card'ı çevreleyen beyaz çizgi
            ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: MediaQuery.of(context).size.width*0.07, // Boyutu 1.5 katına çıkarma
            child: SvgPicture.asset(
              profileImage,
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02),
          Text(
            artistName,
            style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03, fontWeight: FontWeight.normal, color: Colors.white.withOpacity(0.6)),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.035),
          ElevatedButton(
            onPressed: onViewMorePressed,
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // Butonun arka plan rengi
              onPrimary: Colors.red, // Butonun yazı rengi
              side: BorderSide(color: Colors.red.withOpacity(0.3)), // Butonun kenarlık rengi
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.0), // Butonun köşe yarıçapı
              ),
              padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
    
            ),
            child: Text('View More',
            style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03, fontWeight: FontWeight.normal, color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
