import 'package:flutter/material.dart';
import 'package:youtube/custombar.dart';
import 'package:youtube/suggestions.dart';
import 'package:youtube/videos.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const custombar(),
      backgroundColor: Colors.black,
      body: ListView(
        padding: const EdgeInsets.only(top: 5),
        children: [
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: const [
                Chip(
                  elevation: 0,
                  backgroundColor: Color.fromRGBO(45, 45, 45, 1),
                  label: Icon(Icons.explore_outlined, color: Colors.white),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Color.fromRGBO(45, 45, 45, 1), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8.5)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                ),
                SizedBox(width: 9),
                Chip(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  label: Text("All", style: TextStyle(color: Colors.black)),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8.5)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                ),
                SizedBox(width: 9),
                suggestions(name: "Gaming"),
                SizedBox(width: 9),
                suggestions(name: "World War II"),
                SizedBox(width: 9),
                suggestions(name: "Anime"),
                SizedBox(width: 9),
                suggestions(name: "Music"),
              ],
            ),
          ),

          const SizedBox(height: 10),
          const videos(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home, color: Colors.white),),
          BottomNavigationBarItem(label: "Shorts", icon: Icon(Icons.play_circle_sharp, color: Colors.white),),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.add_circle, color: Color.fromRGBO(45, 45, 45, 1), size: 35,),),
          BottomNavigationBarItem(label: "Subscriptions", icon: Icon(Icons.subscriptions_outlined, color: Colors.white),),
          BottomNavigationBarItem(label: "You", icon: Icon(Icons.person, color: Colors.white),),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
      )
    );
  }
}
