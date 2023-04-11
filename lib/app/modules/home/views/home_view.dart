import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dailymood/app/widgets/emoticon_face.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
//import 'package:dailymood/app/widgets/emoticon_face.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        color: Colors.blue[800],
        activeColor: Colors.blue[600],
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Nama User
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Text(
                              "Hi, User",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "04 April 2023",
                              style: TextStyle(
                                color: Colors.blue[200],
                              ),
                            )
                          ],
                        ),
                      ),
                      // Notifikasi

                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //DailyMood
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Center(
                      child: Text(
                        "DAILY MOOD",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  // Mood
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bagaimana Harimu ?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // 4 Mood
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Great
                      Column(
                        children: [
                          EmoticonFace(
                            emotioconFace: '🤩',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bagus',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),

                      // Fine
                      Column(
                        children: [
                          EmoticonFace(
                            emotioconFace: '🙂',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Oke',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),

                      // Angry
                      Column(
                        children: [
                          EmoticonFace(
                            emotioconFace: '😡',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Marah',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),

                      // Sad
                      Column(
                        children: [
                          EmoticonFace(
                            emotioconFace: '😥',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Sedih',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey[300],
                    child: Center(
                        child: Column(
                      children: [
                        Expanded(
                          child: ListView(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Take Your Time",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Color.fromARGB(255, 56, 163, 249),
                                      Color.fromARGB(255, 12, 118, 211),
                                    ]
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                      spreadRadius: 3.0,
                                      offset: Offset(5.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      child: Center(
                                        child: Text(
                                          "🏃‍♂️",
                                          style: TextStyle(
                                            fontSize: 50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        //title
                                        Text(
                                          'ONGOING TASK : OLAHRAGA',
                                          maxLines: 5,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          "Mari selesaikan taskmu",
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14,
                                          ),
                                        )
                                      ],
                                    )
                                  ]
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )),
                  ),
                ),
              ),
            ),

            //listview quizoner
          ],
        ),
      ),
    );
  }
}
