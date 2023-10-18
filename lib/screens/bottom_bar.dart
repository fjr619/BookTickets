import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State <BottomBar> createState() =>  BottomBarState();
}

class BottomBarState extends State <BottomBar> {

  static final List<Widget> _widgetOptions = <Widget> [
      const Text("Home"),
      const Text("Search"),
      const Text("Ticket"),
      const Text("Profile")
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 12,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My Tickets"),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: Theme(data: ThemeData(
        useMaterial3: true,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent
      ), child: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentIcons.home_24_regular), activeIcon: Icon(FluentIcons.home_24_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentIcons.search_24_regular), activeIcon: Icon(FluentIcons.search_24_filled), label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentIcons.ticket_diagonal_24_regular), activeIcon: Icon(FluentIcons.ticket_diagonal_24_filled), label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(FluentIcons.person_24_regular), activeIcon: Icon(FluentIcons.person_24_filled), label: "Profile")

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        ),)
      
    );
  }
}