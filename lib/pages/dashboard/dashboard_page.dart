
import 'package:digi_android/pages/category/category_page.dart';
import 'package:digi_android/pages/home/home_page.dart';
import 'package:digi_android/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  int _currentIndex = 0;
  List<Widget> items = [
    HomePage(),
    CategoryPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('دیجی اندروید'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),

      body: items.elementAt(_currentIndex)


      ,bottomNavigationBar: BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            label: 'Category', icon: Icon(Icons.category)),
        BottomNavigationBarItem(label: 'Setting', icon: Icon(Icons.settings))
      ],
      currentIndex: _currentIndex,
      onTap: _selectedItem,
    ),
    );
  }


  _selectedItem(int index) {


    setState(() {
      _currentIndex = index;
    });


  }
}
