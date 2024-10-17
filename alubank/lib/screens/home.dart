import 'package:alubank/components/sections/account_points.dart';
import 'package:alubank/components/sections/account_sections.dart';
import 'package:alubank/components/sections/header.dart';
import 'package:alubank/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _CustomPreferedWidget(),
      body:
          ListView(
        children: const <Widget>[
          RecentActivity(),
          AccoutActions(),
          AccountPoints(),
        ],
      ),
    );
  }
}

class _CustomPreferedWidget extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    return Header(); // Your custom widget implementation.
  }

}