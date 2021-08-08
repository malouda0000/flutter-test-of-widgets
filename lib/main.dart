import 'package:flutter/material.dart';
import 'package:flutter_app/files/drawer.dart';
import 'package:flutter_app/screens/deatils_tab.dart';
import 'package:flutter_app/screens/main_Screen.dart';
import 'package:flutter_app/screens/place_description.dart';
import 'package:flutter_app/screens/screen2.dart';
import 'package:flutter_app/screens/screen3_testing_padding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // darkTheme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final tabs = [
    MainScreen(),
    BulidingSecondScreen(),
    TestOfPadding(),
    DeatilsListItems(),
    PlaceDescription(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal App'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: tabs[_currentIndex],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Colors.blue,
        tooltip: "add more items bro!!",
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.redAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: 'help'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'settings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.details_outlined), label: 'details'),
        ],
      ),
    );
  }
}
