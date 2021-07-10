/// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets, which means it defaults to [BottomNavigationBarType.fixed], and
// the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

bool _isDark = false;

/// This is the main application widget.
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'yasinsevencom';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '*Yapım Aşamasında',
      style: optionStyle,
    ),
    Text(
      '>Yapım Aşamasında',
      style: optionStyle,
    ),
    Text(
      '#Yapım Aşamasında',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      title: MyApp._title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: _isDark ? Colors.black : Colors.white,
          titleSpacing: 0,
          title: Text(
            'yasinseven.com',
            style: TextStyle(
                color: _isDark ? Colors.white : Colors.black,
                fontWeight: FontWeight.w500),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: _isDark
                ? Image.asset(
                    'icons/favicon.png',
                  )
                : Image.asset(
                    'icons/favicon-black.png',
                  ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.brightness_6,
                color: _isDark ? Colors.white : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  _isDark = !_isDark;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Hakkımda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Blog',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'Projeler',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: _isDark ? Colors.white : Colors.black,
          onTap: _onItemTapped,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
