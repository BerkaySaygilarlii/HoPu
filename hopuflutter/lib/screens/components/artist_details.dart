import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import '../../model.dart/artist_model.dart';

class ArtistDetails extends StatefulWidget {
  final Artist product;

  ArtistDetails({Key? key, required this.product}) : super(key: key);

  @override
  _ArtistDetailsState createState() => _ArtistDetailsState();
}

class _ArtistDetailsState extends State<ArtistDetails> {
  bool readMore = false;

  @override
  Widget build(BuildContext context) {
    double maxWidth =MediaQuery.of(context).size.width;
    // double maxHeight =MediaQuery.of(context).size.height;

    if(maxWidth>600){
      maxWidth=600;
    }
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        
        backgroundColor: backgroundColor,
        title: Text(widget.product.title, style: TextStyle(fontSize: 56,fontWeight: FontWeight.w500, color: kSilver),),
        iconTheme: IconThemeData(color: kSecondaryColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),

        child: SingleChildScrollView(

          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(15),
                //   child: SvgPicture.asset(
                //     widget.product.image,
                //     color: kPrimaryColor,
                //     height: 150,
                //     width: 200,
                //     fit: BoxFit.cover,
                //   ),
                // ),
                // SizedBox(height: 2),

                Container(
                  margin: EdgeInsets.all(5),
                  width: maxWidth,
                  height: MediaQuery.of(context).size.height*0.3,
                  child: ImageSlideshow(

                    /// Width of the [ImageSlideshow].
                    width: double.infinity,

                    /// Height of the [ImageSlideshow].
                    height: 200,

                    /// The page to show when first creating the [ImageSlideshow].
                    initialPage: 0,

                    /// The color to paint the indicator.
                    indicatorColor: Colors.blue,

                    /// The color to paint behind th indicator.
                    indicatorBackgroundColor: Colors.grey,

                    /// The widgets to display in the [ImageSlideshow].
                    /// Add the sample image file into the images folder
                    children: [
                      Image.asset(
                        widget.product.image,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        widget.product.image,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        widget.product.image,
                        fit: BoxFit.cover,
                      ),
                    ],

                    /// Called whenever the page in the center of the viewport changes.
                    onPageChanged: (value) {
                      print('Page changed: $value');
                    },

                    /// Auto scroll interval.
                    /// Do not auto scroll with null or 0.
                    autoPlayInterval: 3000,

                    /// Loops back to first slide.
                    isLoop: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Biography',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                // ... (previous code)

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                      constraints: BoxConstraints(maxWidth: maxWidth), // Set maximum width for the Container
                      child: Wrap(
                        children: [
                          Text(
                            widget.product.bio,
                            maxLines: readMore ? 200 : 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: kPrimaryColor, fontSize: 15),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.all(6),
                            child: GestureDetector(
                              child: Text(
                                readMore ? "Read less" : "Read more",
                                style: TextStyle(color: kSecondaryColor),
                              ),
                              onTap: () {
                                setState(() {
                                  readMore = !readMore;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Wrap(
              alignment: WrapAlignment.start,
              children: [
                artistContactCard(
                  icon: Icons.account_circle, // Instagram ikonu yerine örnek bir ikon
                  title: 'Instagram',
                  content: '@example_instagram',
                  onTap: () {
                    launch('https://www.instagram.com/example_instagram');
                  },
                  context: context,
                ),
                Spacer(),
                artistContactCard(
                  icon: Icons.phone,
                  title: 'Phone Number',
                  content: '+1 123-456-7890',
                  onTap: () {
                    // Buraya telefon numarasının aranmasını sağlayan bir işlem ekleyebilirsiniz
                  },
                  context: context,
                ),
                Spacer(),
                artistContactCard(
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
            ),
          ),
        ),
      ),
    );
  }
  Widget artistContactCard({
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
              size: kPadding, 
              color: Colors.red,// Icon boyutu ekran genişliğine bağlı olarak ayarlandı
            ),
            SizedBox(width: kPadding), // Boşluk ekran genişliğine bağlı olarak ayarlandı
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize:kPadding/1.3, fontWeight: FontWeight.w400,color: kSecondaryColor),
                ),
                SizedBox(height: 3), // Boşluk ekran genişliğine bağlı olarak ayarlandı
                Text(
                  content,
                  style: TextStyle(fontSize: kPadding/1.3,color: kPrimaryColor),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}