import 'package:flutter/material.dart';
import 'package:pageview_demo/pages/PageView/my_profile.dart';
import 'pages/PageView/bag_page.dart';
import 'pages/PageView/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          HomeScreen(),
          BagPage(),
          MyProfile(),
        ],
        onPageChanged: (page) {
          setState(() {
            indexSelected = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexSelected,
          selectedItemColor: Colors.orange,
          onTap: (int page) {
            setState(() {
              indexSelected = page;
            });
            _pageController.animateToPage(
              page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My Profile',
            ),
          ]),
    );
  }
}
