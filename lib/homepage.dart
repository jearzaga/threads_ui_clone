import 'package:flutter/material.dart';

var scaffoldKey = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Image.asset(
          "images/icon.png",
          width: 65,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: const Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0)),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/icon.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
