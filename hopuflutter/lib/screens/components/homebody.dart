import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hopuflutter/constants.dart';
import 'package:hopuflutter/routes.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(
        "Global Talent Agency ",
          textAlign: TextAlign.center,

          maxLines: 2,
          style: TextStyle(
            fontSize: 46,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
            
          ),
        ),
        SizedBox(
          height: 10,
        ),
        AutoSizeText(
           "for",
          maxLines: 1,
          style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold,color: kPrimaryColor,),
        ),
        SizedBox(
          height: 10,
        ),
        AutoSizeText(
          "Electronic Music",
          maxLines: 2,
          style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold,color: kPrimaryColor,),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: kPadding*3,
          width: kPadding*8,
                    decoration: BoxDecoration(
                       color: kSecondaryColor.withOpacity(0.1),// Background color
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:kSecondaryColor), // Border color
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.artists);
                      },
                      child: Text(
                        'See All Artists',
                        style: TextStyle(
                          color: kPrimaryColor, 
                          fontWeight: FontWeight.w500// Text color
                        ),
                      ),
                    ),
                  ),
      ],
    );
  }
}