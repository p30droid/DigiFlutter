import 'package:digi_android/pages/about/about_page.dart';
import 'package:digi_android/pages/dashboard/dashboard_page.dart';
import 'package:digi_android/pages/home/home_page.dart';
import 'package:digi_android/pages/productDetail/product_detail_page.dart';
import 'package:digi_android/pages/profile/profile_page.dart';
import 'package:digi_android/utility/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(new GetMaterialApp(

    getPages: [
      GetPage(name: '/dashboard', page: () => DashboardPage()),
      GetPage(name: '/home', page: () => HomePage()),
      GetPage(name: '/profile', page: () => ProfilePage() ),
      //GetPage(name: '/productDetail', page: () => ProductDetailPage(product: )),
      GetPage(name : '/about', page:()=> AboutPage())

    ],

    locale: Locale('en','US'),
    translations: Messages(),

   initialRoute: '/dashboard',
   // home: DashboardPage(),
  ));
}
