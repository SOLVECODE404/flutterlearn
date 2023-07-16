import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // final imageUrl =
  // "https://thumbs.dreamstime.com/z/businessman-icon-image-male-avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.blue[500],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Utsav singh"),
              accountEmail: Text("utsav@gmail.com"),
              // currentAccountPicture: CircleAvatar(
              //   backgroundImage: NetworkImage(
              //     imageUrl,
              //   ),
              // ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Mail Me",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
