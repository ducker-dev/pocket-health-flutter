import 'package:flutter/material.dart';
import 'package:pocket_health/pages/index.dart';
import 'package:pocket_health/shared/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const PocketHealthApp(),
    );
  }
}

class PocketHealthApp extends StatefulWidget {
  const PocketHealthApp({Key? key}) : super(key: key);

  @override
  State<PocketHealthApp> createState() => _PocketHealthAppState();
}

class _PocketHealthAppState extends State<PocketHealthApp> {
  final PageController _pageController = PageController(initialPage: 0);
  int _curPageIndex = 0;

  onTap(newPageNumber) {
    _pageController.animateToPage(newPageNumber,
        duration: const Duration(microseconds: 2000), curve: Curves.bounceIn);
  }

  onPageChanged(newPageNumber) {
    setState(() {
      _curPageIndex = newPageNumber;
    });
  }

  onGoToPage(pageNumber) {
    onTap(pageNumber);
    onPageChanged(pageNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(_curPageIndex),
      backgroundColor: pageBGColorOne,
      bottomNavigationBar: bottomBar(_curPageIndex, onTap),
      body: PageView(
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[
          waterPage(onGoToPage),
          weightPage(),
          statPage(),
          settingsPage(),
        ],
      ),
    );
  }
}
