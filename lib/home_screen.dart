import 'package:flutter/material.dart';
import 'package:mental_health_app/workout_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:badges/badges.dart' as badges;

import 'news_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/d1/logo1.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: badges.Badge(
              position: badges.BadgePosition.custom(top: 0, end: 2),
              child: const Icon(Icons.notifications_none_outlined),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello, Sara Rose",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "How Are You Feeling Today ?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[200]),
                  child: Image.asset(
                    "assets/images/d1/love.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[200]),
                  child: Image.asset(
                    "assets/images/d1/cool.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[200]),
                  child: Image.asset(
                    "assets/images/d1/happy.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[200]),
                  child: Image.asset(
                    "assets/images/d1/sad.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Feature",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "See more >",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/d1/feature.png",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: index,
                count: 3,
                effect: const WormEffect(dotHeight: 10, dotWidth: 10),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exercise",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  "See more >",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Center(
                  child: Image.asset("assets/images/d1/exercise1.png"),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(child: Image.asset("assets/images/d1/exercise2.png")),
              ],
            ),
            const Spacer(),
            BottomNavigationBar(
              currentIndex: index,
              onTap: (int tappedIndex) {
                setState(() {
                  index = tappedIndex;
                });

                // Handle navigation based on tapped index
                if (index == 1) {
                  Navigator.pushNamed(context, NewsScreen.routeName);
                } else if (index == 2) {
                  Navigator.pushNamed(context, WorkoutScreen.routeName);
                }
              },
              elevation: 0,
              iconSize: 30,
              unselectedItemColor: Colors.grey[500],
              selectedItemColor: Colors.green,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.grid_view_outlined), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: ""),
              ],
            )

          ],
        ),
      ),
    );
  }
}
