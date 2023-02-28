import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(' Home Page'),
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu)),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.supervised_user_circle)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Icon(Icons.emoji_people_rounded
            , ),

            IconButton(
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                icon: Icon(Icons.menu)),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    ));
  }
}
