import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:todo_app/screens/home_page.dart';
import 'package:todo_app/screens/profile_page.dart';



class Bot extends StatefulWidget {
  const Bot({super.key});

  @override
  State<Bot> createState() => _BotState();
}

class _BotState extends State<Bot> {
  int currentTabIndex =0;

  late List<Widget>Home_page=[const Home(),const Profile()];
  void updateIndex(int newindex){
    setState(() {
      currentTabIndex=newindex;
    });
  }
  @override
  void initState(){
    currentTabIndex =0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Home_page[currentTabIndex],
        bottomNavigationBar:CurvedNavigationBar(
          height: 65,
          animationDuration: Duration(milliseconds: 500),



          items: [Icon(Icons.home),Icon(Icons.person)],
          onTap: (index){
            updateIndex(index);

          },
          backgroundColor: Colors.black38,



        )
    );
  }
}
