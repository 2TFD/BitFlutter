import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Rootscreen extends StatelessWidget {
  const Rootscreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), label: ''),
        ],
        onTap: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}
