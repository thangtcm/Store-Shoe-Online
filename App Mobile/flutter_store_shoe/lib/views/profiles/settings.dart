// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/services/userPreferences.dart';
import 'package:flutter_store_shoe/views/profiles/profile_menu.dart';
import 'package:flutter_store_shoe/views/profiles/profile_pic.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenPageState createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreen> {
  String title = "Settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const ProfilePic(),
              const SizedBox(height: 20),
              ProfileMenu(
                text: "My Account",
                icon: Icons.person_2_outlined,
                press: () => {},
              ),
              ProfileMenu(
                text: "Notifications",
                icon: Icons.notifications_outlined,
                press: () {},
              ),
              ProfileMenu(
                text: "Settings",
                icon: Icons.settings_outlined,
                press: () {},
              ),
              ProfileMenu(
                text: "Help Center",
                icon: Icons.help_outline,
                press: () {},
              ),
              ProfileMenu(
                text: "Log Out",
                icon: Icons.logout_outlined,
                press: () {
                  UserPreferences().clearUserModel();
                },
              ),
            ],
          ),
        ));
  }
}
