import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../model.dart/artist_model.dart';
import 'artist_details.dart';

class ArtistsCard extends StatelessWidget {
  const ArtistsCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Artist product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: press,
          child: Material(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              color: Colors.grey,
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SvgPicture.asset(
                      product.image,
                      height: 150, // Adjust the height as needed
                      width: 200, // Take full width
                      fit: BoxFit.cover,
                      color: kPrimaryColor, // Ensure the image covers the space
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AutoSizeText(
                    product.title,
                    maxLines: 1,
                    minFontSize: 8,
                    style: TextStyle(
                      fontSize: kPadding,
                      color: kPrimaryColor
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.transparent, // Background color
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: kSecondaryColor), // Border color
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArtistDetails(product: product),
                          ),
                        );
                      },
                      child: AutoSizeText(
                        'View More',
                        style: TextStyle(
                          color: kPrimaryColor, // Text color
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}