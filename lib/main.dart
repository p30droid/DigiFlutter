import 'package:digi_android/pages/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(new MaterialApp(

    home: DashboardPage(),
  ));
}
