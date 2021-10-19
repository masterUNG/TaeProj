import 'package:flutter/material.dart';
import 'package:taeproj/bodys/artical_page.dart';
import 'package:taeproj/bodys/donate_page.dart';
import 'package:taeproj/bodys/main_page.dart';
import 'package:taeproj/bodys/member_page.dart';
import 'package:taeproj/bodys/shop_page.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  List<BottomNavigationBarItem> bottomNavigationBarItems = [];
  List<String> titles = [
    'หน้าหลัก',
    'บทความ',
    'ร้านค้า',
    'บริจาก',
    'สมาชิก',
  ];
  List<IconData> iconDatas = [
    Icons.filter_1,
    Icons.filter_2,
    Icons.filter_3,
    Icons.filter_4,
    Icons.filter_5,
  ];
  List<Widget> widgets = [
    MainPage(),
    AticlePage(),
    ShopPage(),
    DonatePage(),
    MemberPage(),
  ];

  int indexBody = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (var i = 0; i < titles.length; i++) {
      bottomNavigationBarItems.add(createItem(iconDatas[i], titles[i]));
    }
  }

  BottomNavigationBarItem createItem(IconData iconData, String label) =>
      BottomNavigationBarItem(
        label: label,
        icon: Icon(
          iconData,
          // color: Colors.grey,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedIconTheme: const IconThemeData(
          color: Colors.blue,
        ),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            indexBody = value;
          });
        },
        currentIndex: indexBody,
        items: bottomNavigationBarItems,
      ),
      body: SafeArea(
        child: widgets[indexBody],
      ),
    );
  }
}
