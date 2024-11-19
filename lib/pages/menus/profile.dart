import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_28/widgets/my_color_list.dart';
import 'package:pas1_mobile_11pplg1_28/widgets/my_profile_music_list.dart';
import 'package:pas1_mobile_11pplg1_28/widgets/my_rounded_picture.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: colorBackground,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyRoundedPicture(
                    borderRadius: 100,
                    imageSize: 120,
                    imageUrl:
                        "https://c4.wallpaperflare.com/wallpaper/732/170/347/hololive-nakiri-ayame-hd-wallpaper-preview.jpg",
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'OceanTheSea',
                          style: TextStyle(
                            color: colorWhite,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'oceantheschool@gmail.com',
                          style: TextStyle(
                            color: colorWhite,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Recently played songs',
                style: TextStyle(
                  color: colorWhite,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              MyProfileMusicList(
                  color: colorList,
                  textColor: colorWhite,
                  secondTextColor: secondTextColor,
                  imageUrl:
                      "https://i.scdn.co/image/ab67616d00001e02765e8bcfbecddc85a0d82d1e",
                  imageSize: 70,
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  secondFontSize: 14,
                  secondFontWeight: FontWeight.w500,
                  text: 'あの夏のいつかは',
                  secondText: '*Luna',
                  borderRadius: 10,
                  height: 70,
                  imageBorderRadius: 100),
              SizedBox(height: 12.0),
              MyProfileMusicList(
                  color: colorList,
                  textColor: colorWhite,
                  secondTextColor: secondTextColor,
                  imageUrl:
                      "https://i.scdn.co/image/ab67616d00001e02541bf1ced15115cff87f5532",
                  imageSize: 70,
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  secondFontSize: 14,
                  secondFontWeight: FontWeight.w500,
                  text: 'Integral',
                  secondText: '*Luna',
                  borderRadius: 10,
                  height: 70,
                  imageBorderRadius: 100),
              SizedBox(height: 12.0),
              MyProfileMusicList(
                  color: colorList,
                  textColor: colorWhite,
                  secondTextColor: secondTextColor,
                  imageUrl:
                      "https://i1.sndcdn.com/artworks-RxScHj5YF3EZk7vl-umDkmQ-t500x500.jpg",
                  imageSize: 70,
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  secondFontSize: 14,
                  secondFontWeight: FontWeight.w500,
                  text: 'アトラクトライト',
                  secondText: 'Leo/need x 鏡音レン',
                  borderRadius: 10,
                  height: 70,
                  imageBorderRadius: 100),
              SizedBox(height: 20.0),
              Center(
                child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: colorTransparent,
                    side: BorderSide(color: borderColor),
                  ),
                  child: Text(
                    'Log out',
                    style: TextStyle(
                        color: colorWhite, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Get.offAllNamed('/');
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
