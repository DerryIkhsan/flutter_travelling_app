import 'package:flutter/material.dart';

import 'components/category_destination.dart';
import 'components/header.dart';
import 'components/nearby_destination.dart';
import 'components/popular_destination.dart';
import 'components/search_destination.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen() : super();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color primaryColor = Color(0xFFF72250);
  Color secondaryColor = Color(0xFFF1F1F1);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.house),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "",
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                SizedBox(
                  height: 30,
                ),
                SearchDestination(),
                SizedBox(
                  height: 30,
                ),
                CategoryDestination(
                  primaryColor: primaryColor,
                  secondaryColor: secondaryColor,
                ),
                SizedBox(
                  height: 50,
                ),
                PopularDestination(),
                SizedBox(
                  height: 50,
                ),
                NearbyDestination(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
