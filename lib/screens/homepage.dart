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
                    backgroundImage: AssetImage("images/golimitless.png"),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: SizedBox(
                          width: 95,
                          child: Row(
                            children: [
                              Text(
                                'golimitless',
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
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(140.0, 5.0, 0.0, 0.0),
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
                        color: Color.fromARGB(255, 206, 206, 206),
                        thickness: 2,
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              "Knowledge and expertise are not weapons\nto wield. They are resources to be share -\nAdam Grant",
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
                              padding:
                                  EdgeInsets.fromLTRB(0.0, 0.0, 110.5, 0.0),
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
                              height: 13,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 5.0),
                child: Text(
                  "26 replies • 112 likes",
                  style: TextStyle(
                    color: Color.fromARGB(255, 173, 173, 173),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 206, 206, 206),
                thickness: 1,
              ),
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
                        color: Color.fromARGB(255, 206, 206, 206),
                        thickness: 2,
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              "New updates to Threads this week:\n\n🧵Directly share a post to your Instagram DMs\n🧵Custom alt-text for photo/video\n🧵New mention button to easily mention\n someone's account in your Thread.",
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
                              padding:
                                  EdgeInsets.fromLTRB(0.0, 0.0, 130.0, 0.0),
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
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 5.0),
                child: Text(
                  "26 replies • 112 likes",
                  style: TextStyle(
                    color: Color.fromARGB(255, 173, 173, 173),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 206, 206, 206),
                thickness: 1,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/google.png"),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: SizedBox(
                          width: 60,
                          child: Row(
                            children: [
                              Text(
                                'google',
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
                                const EdgeInsets.fromLTRB(155.0, 5.0, 0.0, 0.0),
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
                        color: Color.fromARGB(255, 206, 206, 206),
                        thickness: 2,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              "It's time for the Ceremonial\nClosing of Chrome Tabs.",
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
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
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
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 5.0),
                child: Text(
                  "26 replies • 112 likes",
                  style: TextStyle(
                    color: Color.fromARGB(255, 173, 173, 173),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 206, 206, 206),
                thickness: 1,
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
                image: AssetImage("images/home.png"),
                width: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/search.png"),
                width: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/write.png"),
                width: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/activity.png"),
                width: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/profile.png"),
                width: 25,
              ),
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
