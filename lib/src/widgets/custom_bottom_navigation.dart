import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: <BottomNavigationBarItem>[

        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, size: 30.0),
          label: 'Calendario'
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.bubble_chart, size: 30.0),
          label: 'Grafica'
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle, size: 30.0),
          label: 'Usuarios'
        ),
      ],
    );
  }
}