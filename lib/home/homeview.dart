import 'package:flutter/material.dart';

import 'navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const NavBar(),
          const Padding(
            padding: EdgeInsets.all(15),
          ),
          Card(
            color: Colors.grey.shade400,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Testing Body"),
            ),
          ),
        ],
      ),
    );
  }
}//testing

