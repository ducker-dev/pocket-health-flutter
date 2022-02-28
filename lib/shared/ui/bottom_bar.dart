import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pocket_health/shared/index.dart';
import 'dart:io' show Platform;

final items = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: const Icon(CupertinoIcons.drop_fill),
    label: texts['bottomBar']!['water'],
  ),
  BottomNavigationBarItem(
    icon: const Icon(Icons.accessibility_new),
    label: texts['bottomBar']!['weight'],
  ),
  BottomNavigationBarItem(
    icon: const Icon(Icons.stacked_bar_chart),
    label: texts['bottomBar']!['stat'],
  ),
  BottomNavigationBarItem(
    icon: const Icon(Icons.settings),
    label: texts['bottomBar']!['settings'],
  ),
];

CupertinoTabBar bottomBarIOS(currentIndex, onTap) {
  return CupertinoTabBar(
    activeColor: accentColor,
    backgroundColor: bottomBarBGColor,
    currentIndex: currentIndex,
    onTap: onTap,
    items: items,
  );
}

BottomNavigationBar bottomBarAndroid(currentIndex, onTap) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: accentColor,
    backgroundColor: bottomBarBGColor,
    currentIndex: currentIndex,
    onTap: onTap,
    items: items,
  );
}

dynamic bottomBar(currentIndex, onTap) {
  return Platform.isAndroid
      ? bottomBarAndroid(currentIndex, onTap)
      : bottomBarIOS(currentIndex, onTap);
}
