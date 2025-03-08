import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hw_test/home/views/homeView.dart';

import '../../Cons_colors/Cons_colors.dart';
import '../controller/HomeController.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const MyHomePage(),
    Center(child: Text("data")),
    Center(child: Text("data"))
  ];

  @override
  void initState() {
    super.initState();
    Get.put(HomeController()); // Inisialisasi HomeController
    // Inisialisasi ProfileController
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Menampilkan halaman yang dipilih
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kColorBgAccent,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Events'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
