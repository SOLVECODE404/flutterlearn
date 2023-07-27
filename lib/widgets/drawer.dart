import 'package:catalog/utlis/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  // final imageUrl =
  // "https://thumbs.dreamstime.com/z/businessman-icon-image-male-avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Mytheme.darkBluishColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Mytheme.darkBluishColor,
                ),
                margin: EdgeInsets.zero,
                accountName: "Utsav Singh".text.xl3.make().py8(),
                accountEmail: "Abc@gmail.com".text.xl2.make(),
                // currentAccountPicture: CircleAvatar(
                //   child: Image.asset("assets/images/iPhone1.jpg"),
                // )
                // currentAccountPicture: CircleAvatar(
                //   backgroundImage: NetworkImage(
                //     imageUrl,
                //   ),
                // ),
              ),
            ),
            Divider(
              color: Colors.purple,
              thickness: 4,
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
      ),
    );
  }
}
