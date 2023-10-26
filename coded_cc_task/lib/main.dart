import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coded_cc_task/screens/home_screen.dart';
import 'package:coded_cc_task/provider/favorite_provider.dart';

class MyApp extends StatelessWidget {
  // The main app widget that wraps the HomePage widget and makes the FavoriteProvider instance available to it.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
