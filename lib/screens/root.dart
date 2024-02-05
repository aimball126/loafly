import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/bottom_bar_item.dart';
import 'home/home_screen.dart';

//فئة StatefulWidget RootApp تدير حالة شريط القوائم السفلي
class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

//فئة الدولة الخاصة لـ RootApp
class _RootAppState extends State<RootApp> {

//فهرس علامة التبويب النشطة لتتبع علامة التبويب المحددة

  int _activeTab = 0;

  //قائمة الرموز لكل علامة تبويب في شريط التنقل السفلي

  final List<IconData> _tapIcons = [
    Icons.home_rounded,
    Icons.explore_rounded,
    Icons.shopping_cart_rounded,
    Icons.person_rounded
  ];

  //قائمة الصفحات المقابلة لكل علامة تبويب في شريط التنقل السفلي

  final List<Widget> _pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {

//يوفر Scaffold هيكل التطبيق بشريط تنقل سفلي

    return Scaffold(
      backgroundColor: appBgColor,
      bottomNavigationBar: _buildBottomBar(),
      body: _buildBarPage(),
    );
  }

//طريقة بناء شريط التنقل السفلي
  Widget _buildBottomBar() {
    return Container(
      height: 75,
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: bottomBarColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            blurRadius: .5,
            spreadRadius: .5,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          _tapIcons.length,
              (index) => BottomBarItem(
            _tapIcons[index],
            isActive: _activeTab == index,
            activeColor: primary,
            onTap: () {
              setState(() {
                _activeTab = index;
              });
            },
          ),
        ),
      ),
    );
  }


//طريقة إنشاء الصفحة لعلامة التبويب المحددة
  Widget _buildBarPage() {
    return IndexedStack(
      index: _activeTab, //فهرس الصفحة النشطة
      children: List.generate(
        _tapIcons.length,
            (index) => _pages[index], //صفحات لكل علامة تبويب
      ),
    );
  }
}
