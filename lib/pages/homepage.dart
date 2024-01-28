// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double avaolableScreenWidth = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    avaolableScreenWidth = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Roitters',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Team Folder', style: TextStyle(color: Colors.white))
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          )),
                    )
                  ],
                )
              ],
            ),
            height: 170,
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                      text: "Storage",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: "9.1/10GB",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ))
                      ]),
                ),
                Text(
                  "Upgrade",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                sizecloumn("SOURCES", Colors.blue, 0.3),
                SizedBox(
                  width: 2,
                ),
                sizecloumn("DOCS", Colors.red, 0.3),
                SizedBox(
                  width: 2,
                ),
                sizecloumn("IMAGES", Colors.yellow, 0.3),
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Divider(
            height: 20,
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(25),
            children: [
              Text(
                "Recently Updated",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  columnImage("Desktop", "sketch", "sketch"),
                  SizedBox(
                    width: 8,
                  ),
                  columnImage("Desktop", "sketch", "sketch"),
                  SizedBox(
                    width: 8,
                  ),
                  columnImage("Desktop", "sketch", "sketch"),
                ],
              ),
              Divider(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Porjects",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "Create New",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              BuildProjectRow("Chatbox"),
              BuildProjectRow("TimeNote"),
              BuildProjectRow("Somthing"),
              BuildProjectRow("Other"),
            ],
          )),
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(color: Colors.white, spreadRadius: 7, blurRadius: 1)
        ]),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: 'time',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Folder')
          ]),
    );
  }

  Container BuildProjectRow(String Foldername) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.folder,
                color: Colors.blue[200],
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                Foldername,
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_rounded,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }

  Column columnImage(String fileName, String option, String image) {
    return Column(
      children: [
        Container(
          width: avaolableScreenWidth * 0.31,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15)),
          padding: EdgeInsets.all(38),
          child: Image.asset("assets/$image.png"),
        ),
        SizedBox(
          height: 15,
        ),
        RichText(
            text: TextSpan(
                text: fileName,
                style: TextStyle(color: Colors.black, fontSize: 18),
                children: [
              TextSpan(
                  text: option,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300))
            ]))
      ],
    );
  }

  Column sizecloumn(String title, Color color, double width) {
    return Column(
      children: [
        Container(
          width: avaolableScreenWidth * width,
          height: 4,
          color: color,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
