

import 'package:digi_android/utility/admob_service.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    AdmobService.intestialLoad();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:


      Center(


        child: Column(

           children: [

             Container(
              height: 100,
               child: AdWidget(
                 key: UniqueKey(),
                 ad: AdmobService.createBannerAds()..load(),
               ),

             ) ,

             Lottie.asset('assets/lottie/95147-rocket.json'),


           ],

        ),



      ),

    );
  }
}
