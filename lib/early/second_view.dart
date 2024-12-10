import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../color/color_extension.dart';
import '../common_widget/menu.cell.dart';
import '../common_widget/plan.row.dart';
import 'home_view.dart';
import '../sport/exercise.dart';
import '../sport/running.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List planArr = [
    {
      "name": "Running",
      "icon": "images/menu_running.png",
      "right_icon": "",
    },
    {
      "name": "Workout",
      "icon": "images/workout.png",
      "right_icon": "",
    },
  ];

  List menuArr = [
    {"name": "Home", "image": "images/menu_home.png", "tag": "1"},
    {"name": "Running", "image": "images/menu_running.png", "tag": "2"},
    {"name": "Exercises", "image": "images/menu_exercises.png", "tag": "3"},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      drawer: Drawer(
          width: media.width,
          backgroundColor: Colors.transparent,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5,
            ),
            child: Stack(
              children: [
                Container(
                  width: media.width * 0.78,
                  decoration: BoxDecoration(color: TColor.white),
                  child: SafeArea(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      children: [
                        Container(
                          height: kTextTabBarHeight,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(22.5),
                                child: Image.asset("images/u1.png",
                                    width: 45, height: 45, fit: BoxFit.cover),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Text(
                                  "Traning Plan",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: TColor.secondaryText,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: Colors.black26,
                          height: 1,
                        ),
                        Expanded(
                            child: ListView.builder(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 50),
                                itemCount: planArr.length,
                                itemBuilder: (context, index) {
                                  var itemObj = planArr[index] as Map? ?? {};
                                })),
                        const Divider(
                          color: Colors.black26,
                          height: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: kTextTabBarHeight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Switch Account",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: TColor.secondaryText,
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Image.asset("images/next.png",
                                    width: 18, height: 18),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: kToolbarHeight - 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Image.asset(
                                "images/meun_close.png",
                                width: 25,
                                height: 25,
                              )),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: media.width * 0.6,
              collapsedHeight: kToolbarHeight + 20,
              flexibleSpace: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.asset(
                    "images/1.png",
                    width: media.width,
                    height: media.width * 0.8,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: media.width,
                    height: media.width * 0.8,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.transparent, Colors.black],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 30),
                    child: Row(
                      children: [
                        Container(
                          width: 54,
                          height: 54,
                          decoration: BoxDecoration(
                              color: TColor.white,
                              borderRadius: BorderRadius.circular(27)),
                          alignment: Alignment.center,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                "images/ganteng.jpg",
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              )),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Hafid Farhan Agoy",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: TColor.white,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(
                                height: 4,
                              ),
                              Text("Group 1 Fitness Tracker",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: TColor.white,
                                      fontWeight: FontWeight.w500))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ];
        },
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1),
          itemCount: menuArr.length,
          itemBuilder: ((context, index) {
            var mObj = menuArr[index] as Map? ?? {};
            return MenuCell(
              mObj: mObj,
              onPressed: () {
                switch (mObj["tag"].toString()) {
                  case "1":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()));
                    break;
                  case "2":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()));
                    break;
                  case "3":
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()));
                    break;
                }
              },
            );
          }),
        ),
      ),
    );
  }
}
