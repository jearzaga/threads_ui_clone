import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/zuck.png"),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 65.50,
                          height: 21,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'zuck',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              )
                            ],
                          ), // specify your color
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: CircleAvatar(
                          radius: 7,
                          backgroundImage: AssetImage("images/meta.png"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image(image: AssetImage("images/Home.png"), width: 25),
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
