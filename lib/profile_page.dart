import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int itemCount = 20;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("Item ${(index + 1)}"),
          leading: const Icon(Icons.local_fire_department),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            debugPrint("ListTile Clicked ${index + 1}");
          },
        );
      },
    );
  }
}
