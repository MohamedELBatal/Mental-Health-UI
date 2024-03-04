import 'package:flutter/material.dart';
import 'package:mental_health_app/workout_programs_tab.dart';

class WorkoutScreen extends StatelessWidget {
  static const String routeName = "WorkoutScreen";

  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset("assets/images/d2/pr_pic.png"),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Jade",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Ready To Workout ?",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.notification_add_outlined,
                    size: 35,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/d2/rate.png",
                  fit: BoxFit.fill,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Workout Programs",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            TabBar(
              unselectedLabelColor: Colors.grey[500],
              labelColor: Colors.black,
              tabs: const [
                Tab(
                  child: Text(
                    "All Type",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    "Full Body",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    "Upper",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    "Lower",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
              ],
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  WorkoutProgramsTab()
                ],
              ),
            ),
                BottomNavigationBar(
                    elevation: 0,
                    iconSize: 30,
                    unselectedItemColor: Colors.grey[500],
                    selectedItemColor: Colors.green,
                    showUnselectedLabels: false,
                    showSelectedLabels: false,
                    items:  const [
                      BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
                      BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/d2/ic_navigator.png")),label: ""),
                      BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/d2/ic_bar.png")),label: ""),
                      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: ""),
                    ])
          ]),
        ),
      ),
    );
  }
}
