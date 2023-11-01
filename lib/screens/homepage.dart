import 'package:flutter/material.dart';

var scaffoldKey = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Image.asset(
            "images/icon.png",
            width: 65,
          ),
          backgroundColor: Colors.grey.shade100,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey.shade100,
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/zuck.png"),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: SizedBox(
                          width: 45,
                          child: Row(
                            children: [
                              Text(
                                'zuck',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  // fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              )
                            ],
                          ), // specify your color
                        ),
                      ),
                      const CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage("images/meta.png"),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(170.0, 5.0, 0.0, 0.0),
                            child: Text(
                              "33m",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 14,
                                // fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const IntrinsicHeight(
                child: Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Text(""),
                      SizedBox(
                        width: 35,
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              "10 million sign ups in seven hours.\nHow did we manage that?\nWe used Threads.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                // fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 63.0, 0.0),
                              child: Row(
                                children: [
                                  Image(image: AssetImage("images/heart.png")),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(
                                      image: AssetImage("images/comments.png")),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(image: AssetImage("images/repost.png")),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image(image: AssetImage("images/send.png")),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 0.0),
                              child: Text(
                                "26 replies • 112 likes",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(82.5, 7.0, 0.0, 0.0),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          backgroundColor: Colors.grey.shade100,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/Home.png"),
                width: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_sharp),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
