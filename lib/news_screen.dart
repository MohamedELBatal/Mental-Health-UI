import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsScreen extends StatelessWidget {
  static const String routeName = "NewsScreen";

  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(toolbarHeight: 30,),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/d3/flower.png",
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "ALiceCare",
                            style: GoogleFonts.milonga(
                                fontWeight: FontWeight.w400, fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    const SearchBar(
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.only(top: 10, bottom: 10, right: 14, left: 14),
                      ),
                      leading: Icon(Icons.search),
                      hintText: "Articles, Video, Audio and More,.....",
                    ),
                    const TabBar(
                      tabs: [
                        Tab(
                          child: Text(
                            "Discover",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "News",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Most Viewed",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Saved",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hot Topics",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "See more >",
                            style: TextStyle(
                                color: Color(0xFF6941C6),
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    ImageSlideshow(
                      width: double.infinity,
                      height: 150,
                      initialPage: 0,
                      indicatorColor: Colors.blue,
                      indicatorBackgroundColor: Colors.grey,
                      onPageChanged: (value) {
                        print('Page changed: $value');
                      },
                      autoPlayInterval: 3000,
                      isLoop: true,
                      children: [
                        Image.asset("assets/images/d3/self_care.png"),
                        Image.asset("assets/images/d3/cycle.png"),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Get Tips",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 350,
                      color: Colors.grey[100],
                      child: Row(
                        children: [
                          Image.asset("assets/images/d3/doctor.png"),
                          const SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: [
                                const Text("Connect with doctors & "),
                                const Text("get suggestions"),
                                const Text("Connect now and get"),
                                const Text("expert insights "),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.blue),
                                  ),
                                  child: const Text(
                                    "View Detail",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cycle Phases and Period",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "See more >",
                            style: TextStyle(
                                color: Color(0xFF5925DC),
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    BottomNavigationBar(
                        elevation: 0,
                        currentIndex: 1,
                        iconSize: 35,
                        unselectedItemColor: Colors.black,
                        selectedItemColor: Color(0xFF6941C6),
                        showUnselectedLabels: false,
                        showSelectedLabels: false,
                        items: const [
                          BottomNavigationBarItem(
                              icon: ImageIcon(
                                  AssetImage("assets/images/d3/ic_calendar.png")),
                              label: ""),
                          BottomNavigationBarItem(
                              icon: ImageIcon(
                                  AssetImage("assets/images/d3/ic_insights.png")), label: ""),
                          BottomNavigationBarItem(
                              icon: ImageIcon(
                                  AssetImage("assets/images/d3/ic_chat.png")),
                              label: ""),
                        ])
                  ]),
            ),
          ),
        ));
  }
}
