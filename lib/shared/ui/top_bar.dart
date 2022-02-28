import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocket_health/shared/index.dart';
import 'dart:io' show Platform;

final barTitles = [
  texts['bottomBar']!['water'],
  texts['bottomBar']!['weight'],
  texts['bottomBar']!['stat'],
  texts['bottomBar']!['settings'],
];

CupertinoNavigationBar topBarIOS(curPageIndex) {
  return CupertinoNavigationBar(
    middle: Text(
      barTitles[curPageIndex]!,
      style: const TextStyle(color: topBarTitleColor),
    ),
    backgroundColor: topBarBGColor,
  );
}

AppBar topBarAndroid(curPageIndex) {
  return AppBar(
    title: Text(barTitles[curPageIndex]!),
    centerTitle: true,
    backgroundColor: topBarBGColor,
    shadowColor: transparentColor,
  );
}

dynamic topBar(curPageIndex) {
  return Platform.isAndroid ? topBarAndroid(curPageIndex) : topBarIOS(curPageIndex);
}
