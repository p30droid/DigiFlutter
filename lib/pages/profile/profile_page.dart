import 'package:digi_android/pages/about/about_page.dart';
import 'package:digi_android/pages/profile/seeting_controller.dart';
import 'package:digi_android/utility/admob_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var controller = Get.put(SettingController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    AdmobService.intestialLoad();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              child: AdWidget(
                key: UniqueKey(),
                ad: AdmobService.createBannerAds()..load(),
              ),
            ),

            //Lottie.asset('assets/lottie/95147-rocket.json'),

            ElevatedButton(
                onPressed: () {
                  // Get.to(AboutPage());
                  Get.toNamed('/about');
                },
                child: Text('About')),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: Text('+')),
                Obx(() => Text('${controller.counter}')),
                ElevatedButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    child: Text('-'))
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.changeTheme(ThemeData.dark());
                    },
                    child: Text('Dark')),
                ElevatedButton(
                    onPressed: () {
                      Get.changeTheme(ThemeData.light());
                    },
                    child: Text('Light'))
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('en', 'US');
                      Get.updateLocale(locale);
                    },
                    child: Text('English')),
                Text('hello'.tr),
                ElevatedButton(
                    onPressed: () {
                      var locale = Locale('fa', 'IR');
                      Get.updateLocale(locale);
                    },
                    child: Text('Farsi'))
              ],
            ),

            ElevatedButton(
                onPressed: () {
                 
                 // Get.snackbar('Hi', 'My Message');

                  /*Get.snackbar(
                    "GeeksforGeeks",
                    "Hello everyone",
                    icon: Icon(Icons.person, color: Colors.white),
                    snackPosition: SnackPosition.BOTTOM,

                  );
*/

                  Get.snackbar(
                    "GeeksforGeeks",
                    "Hello everyone",
                    icon: Icon(Icons.person, color: Colors.white),
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green,
                  );

                },
                child: Text('SnackBar'))


          ],
        ),
      ),
    );
  }
}
