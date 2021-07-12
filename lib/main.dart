import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yasinsevencom/langs/codegen_loader.g.dart';
//import 'package:yasinsevencom/langs/locale_keys.g.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yasinsevencom/pages/aboutme.dart';
import 'package:yasinsevencom/pages/blog.dart';
import 'package:yasinsevencom/pages/projects.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale("tr"), Locale("en")],
        assetLoader: CodegenLoader(),
        path: 'langs', // <-- change the path of the translation files
        fallbackLocale: Locale("tr"),
        startLocale: Locale("tr"),
        saveLocale: false,
        child: MyApp()),
  );
}

bool _isDark = false;
bool _isTR = true;

/// This is the main application widget.
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'yasinsevencom';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {});
    });
    List<Widget> _widgetOptions = <Widget>[
      AboutMePage(),
      BlogPage(),
      ProjectsPage(),
    ];
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
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
              icon: _isTR
                  ? SvgPicture.asset('icons/flags/svg/tr.svg',
                      package: 'country_icons')
                  : SvgPicture.asset('icons/flags/svg/gb.svg',
                      package: 'country_icons'),
              onPressed: () {
                if (context.locale.toString() == "tr") {
                  context.setLocale(Locale("en"));
                  _isTR = false;
                  Future.delayed(const Duration(milliseconds: 100), () {
                    setState(() {});
                  });
                } else {
                  context.setLocale(Locale("tr"));
                  _isTR = true;
                  Future.delayed(const Duration(milliseconds: 100), () {
                    setState(() {});
                  });
                }
              },
            ),
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
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'aboutme.navbar'.tr(),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'blog.navbar'.tr(),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'projects.navbar'.tr(),
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
