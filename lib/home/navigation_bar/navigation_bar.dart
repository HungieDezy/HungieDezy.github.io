import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: SizedBox(
        height: 100,
        child: Row(
          children: const <Widget>[
            SizedBox(
              height: 80,
              width: 150,
              child: Text("Logo Coming Soon"),
            ),
            SizedBox(
              width: 300,
              child: Text('HUNGIE', style: TextStyle(fontSize: 50),),),
            // Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: const <Widget>[
            //     _NavBarItem(title: 'Coming Soon'),
            //   ],
            // )
          ],
        )
      ),
    );
  }
}


class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title, style: TextStyle(fontSize: 18),
    );
  }
}
