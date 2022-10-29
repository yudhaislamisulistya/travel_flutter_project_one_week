import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:project_one_week/const.dart';
import 'package:project_one_week/screens/dashboard.dart';
import 'package:project_one_week/screens/favorite.dart';
import 'package:project_one_week/screens/setting.dart';
import 'package:project_one_week/screens/ticket.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );

  int _selectedItemPosition = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void pageChanged(int index) {
    setState(() {
      _selectedItemPosition = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (value) {
            pageChanged(value);
          },
          children: <Widget>[
            Dashboard(),
            Favorite(),
            Ticket(),
            Setting(),
          ],
        ),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.circle,
        shape: RoundedRectangleBorder(borderRadius: _borderRadius),
        padding: const EdgeInsets.all(12),
        snakeViewColor: colorPrimary,
        selectedItemColor:
            SnakeShape.circle == SnakeShape.indicator ? Colors.black : null,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() {
          print(index);
          _selectedItemPosition = index;
          _pageController.animateToPage(index,
              duration: Duration(seconds: 1), curve: Curves.ease);
        }),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'calendar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_outlined), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'setting'),
        ],
      ),
    );
  }
}
