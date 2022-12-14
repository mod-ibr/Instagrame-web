import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_web/LeftSection/src/MyProfileDetail.dart';
import 'package:instagram_web/LeftSection/src/NavBar.dart';
import 'package:instagram_web/ProfileImage.dart';

class LeftSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
        color: Color(0xff282a34),
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: Color(0xff282a34),
          width: 0.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 15.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20.0,
              ),
              Image.asset(
                'assets/instaLogo.png',
                height: 25.0,
              ),
              SizedBox(
                width: 30.0,
              ),
              Container(
                child: Image.asset(
                  'assets/insta.png',
                  height: 22.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 25.0,
              bottom: 10.0,
            ),
            child: ProfileImage(
              size: 90.0,
              image: 'assets/0.jpeg',
            ),
          ),
          Text(
            'Mahmoud Ibrahim',
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            '@mod-ibr',
            style: GoogleFonts.nunito(
              color: Colors.white38,
              fontSize: 13.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyProfileDetail('10', '  Posts  '),
              Container(
                height: 40.0,
                width: 1.0,
                color: Colors.white38,
              ),
              MyProfileDetail('1k', 'Followers'),
              Container(
                height: 40.0,
                width: 1.0,
                color: Colors.white38,
              ),
              MyProfileDetail('900', 'Following'),
            ],
          ),
          NavBar(),
          Container(
            height: 1.0,
            color: Colors.white38,
            margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 12.0),
          ),
          Container(
            height: 50.0,
            child: NavBarItem(
              icon: FontAwesome.sign_out,
              name: 'Logout',
              isSelected: false,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
