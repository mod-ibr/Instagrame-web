import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_web/ProfileImage.dart';

List<String> profileImages = [
  'assets/0.jpeg',
  'assets/1.jpeg',
  'assets/2.jpeg',
  'assets/3.jpeg',
  'assets/4.jpeg',
  'assets/5.jpeg',
  'assets/6.jpeg',
  'assets/7.jpeg',
  'assets/8.jpeg',
  'assets/1.jpeg',
  'assets/2.jpeg',
  'assets/3.jpeg',
  'assets/4.jpeg',
];

class RightSectionMiddle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Stories',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.play_circle_outline,
                        color: Colors.white70,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Watch all',
                        style: GoogleFonts.nunito(
                          color: Colors.white70,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: profileImages
                    .map(
                      (e) => ProfileImage(
                        image: e,
                        size: 85.0,
                        myProfile:
                            (profileImages.indexOf(e) == 0) ? true : false,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
