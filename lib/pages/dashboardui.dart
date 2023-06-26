import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboardui extends StatelessWidget {
  const Dashboardui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50))),
            child: const Column(children: [
              SizedBox(
                height: 50,
              ),
              ListTile(
                title: Text(
                  'Hi , Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      fontSize: 36),
                ),
                subtitle: Text(
                  'Good Morning',
                  style: TextStyle(color: Colors.white54),
                ),
                trailing: CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: NetworkImage(
                      "https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/342545681_211419661596448_4958260538748117626_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=kGzAxQyxzYwAX_kjYrs&_nc_ht=scontent-hbe1-1.xx&oh=00_AfBUz95ChGbN9jNUiriOuAOsGuy-c0itRPx8Y6LenpFksw&oe=648E4F1E"),
                ),
              )
            ]),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  itemDashboard('Playlist', CupertinoIcons.play_rectangle,
                      Colors.deepOrange),
                  itemDashboard(
                      'Videos', CupertinoIcons.play_fill, Colors.deepPurple),
                  itemDashboard('Albums', CupertinoIcons.music_albums,
                      Colors.green.shade300),
                  itemDashboard(
                      'Upload', CupertinoIcons.upload_circle, Colors.cyan),
                  itemDashboard(
                      'Comment', CupertinoIcons.chat_bubble, Colors.black45),
                  itemDashboard(
                      'Revenu', CupertinoIcons.money_dollar, Colors.indigo),
                  itemDashboard(
                      'question', CupertinoIcons.question, Colors.blue),
                  itemDashboard('Call', CupertinoIcons.phone, Colors.pink),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Colors.grey.shade200,
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration:
                BoxDecoration(color: background, shape: BoxShape.circle),
            child: Icon(iconData, color: Colors.white),
          ),
          SizedBox(
            height: 8,
          ),
          Text(title, style: TextStyle(fontSize: 16))
        ]),
      );
}
