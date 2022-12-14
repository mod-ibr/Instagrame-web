import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProfileImage extends StatelessWidget {
  final double size;
  final String image;
  late bool myProfile;
  late bool small = false;

  ProfileImage({
    required this.size,
    required this.image,
    this.myProfile = false,
    this.small = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xfff58529),
            Color(0xfffeda77),
            Color(0xffdd2a7b),
            Color(0xff8134af),
            Color(0xff515bd4),
          ],
        ),
      ),
      child: Center(
        child: Container(
          height: (small) ? size - 2 : size - 4,
          width: (small) ? size - 2 : size - 4,
          decoration: BoxDecoration(
            color: Color(0xff282a34),
            borderRadius: BorderRadius.circular(80.0),
          ),
          child: Center(
            child: Container(
              height: (small) ? size - 6 : size - 15,
              width: (small) ? size - 6 : size - 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.0),
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: (myProfile)
                    ? BoxDecoration(
                        color: Colors.blue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(80.0),
                      )
                    : BoxDecoration(),
                child: (myProfile)
                    ? Icon(
                        Feather.plus,
                        color: Colors.white,
                      )
                    : Text(''),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
