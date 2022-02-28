import 'package:flutter/cupertino.dart';
import 'package:pocket_health/pages/index.dart';

getPages({onGoToPage}) {
  return <Widget>[
    waterPage(onGoToPage),
    weightPage(),
    statPage(),
    settingsPage(),
  ];
}