import 'package:flutter/material.dart';
import 'package:pulso_mty/screens/alerts_screen.dart';
import 'package:pulso_mty/screens/home_screen.dart';
import 'package:pulso_mty/screens/profile_screen.dart';
import 'package:pulso_mty/screens/traffic_screen.dart';
import 'package:pulso_mty/theme/app_theme.dart';

class MainScreen extends StatefulWidget{

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {

  int _selectIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const TrafficScreen(),
    const AlertsScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext content){

    return Scaffold(

      body: _screens[_selectIndex], 

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: AppTheme.lightTheme.primaryColor),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.traffic), label: 'Tráfico'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active), label: 'Alertas'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );

  }

}