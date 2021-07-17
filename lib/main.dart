import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yasinsevencom/langs/codegen_loader.g.dart';
import 'package:yasinsevencom/pages/aboutme/aboutme.dart';
import 'package:yasinsevencom/pages/blog/blog.dart';
import 'package:yasinsevencom/pages/projects/projects.dart';
import 'package:flutter/cupertino.dart';

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

bool isDark = false;
bool isTR = true;

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
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      title: MyApp._title,
      home: CupertinoStoreHomePage(),
    );
  }
}

class CupertinoStoreHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
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
        activeColor: isDark ? Colors.white : Colors.black,
        iconSize: 24,
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: AboutMePage(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: BlogPage(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ProjectsPage(),
              );
            });
          default:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: AboutMePage(),
              );
            });
        }
      },
    );
  }
}
