import 'package:flutter/material.dart';
import 'package:petroapp/extension/extension.dart';
import 'package:petroapp/util/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: context.maxWidth(),
          height: context.responsiveHeight(20),
        ),
        Text(
          "My Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: context.responsiveWidth(
                24,
              )),
        ),
        SizedBox(
          width: context.maxWidth(),
          height: context.responsiveHeight(20),
        ),
        Container(
            alignment: Alignment.bottomRight,
            height: context.responsiveHeight(150),
            width: context.responsiveWidth(
              150,
            ),
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/profile/propic.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(80)),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.camera_alt)),
            )),
        SizedBox(
          height: context.responsiveHeight(10),
        ),
        Text(
          "   Machael Leanon",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black54,
              fontSize: context.responsiveWidth(18)),
        ),
        SizedBox(
          height: context.responsiveHeight(10),
        ),
        Text(
          "   michaellean42@gmail.com",
          style: TextStyle(
              // fontWeight: FontWeight.w600,
              color: Colors.black45,
              fontSize: context.responsiveWidth(18)),
        ),
        SizedBox(
          height: context.responsiveHeight(10),
        ),
        ListTile(
          leading: Icon(
            Icons.account_box,
            color: AppColors.primerycolor,
          ),
          title: Text(
            "Account",
            style: TextStyle(
                // fontWeight: FontWeight.w600,
                color: Colors.black45,
                fontSize: context.responsiveWidth(18)),
          ),
          trailing: const Icon(Icons.arrow_forward),
        ),
        Divider(
          indent: 60,
        ),
        ListTile(
          leading: Icon(
            Icons.notifications,
            color: AppColors.primerycolor,
          ),
          title: Text(
            "Notification",
            style: TextStyle(
                // fontWeight: FontWeight.w600,
                color: Colors.black45,
                fontSize: context.responsiveWidth(18)),
          ),
          trailing: const Icon(Icons.arrow_forward),
        ),
        Divider(
          indent: 60,
        ),
        ListTile(
          leading: Icon(
            Icons.privacy_tip,
            color: AppColors.primerycolor,
          ),
          title: Text(
            "Privacy & Posily",
            style: TextStyle(
                // fontWeight: FontWeight.w600,
                color: Colors.black45,
                fontSize: context.responsiveWidth(18)),
          ),
          trailing: const Icon(Icons.arrow_forward),
        ),
        Divider(
          indent: 60,
        ),
        ListTile(
          leading: Icon(
            Icons.list,
            color: AppColors.primerycolor,
          ),
          title: Text(
            "Terms & Conditions",
            style: TextStyle(
                // fontWeight: FontWeight.w600,
                color: Colors.black45,
                fontSize: context.responsiveWidth(18)),
          ),
          trailing: const Icon(Icons.arrow_forward),
        ),
        Divider(
          indent: 60,
        ),
      ],
    );
  }
}
