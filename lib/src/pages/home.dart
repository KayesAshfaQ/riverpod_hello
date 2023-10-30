import 'package:flutter/material.dart';
import 'package:riverpod_hello/src/pages/bored.dart';
import 'package:riverpod_hello/src/pages/hello.dart';

import '../widgets/nav_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Demo Home Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // navigate to the Hello page
            NavButton(
              label: 'Hello Screen',
              navPage: HelloPage(),
            ),

            SizedBox(height: 20),

            // navigate to the bored page
            NavButton(
              label: 'Bored Screen',
              navPage: BoredPage(),
            ),
          ],
        ),
      ),
    );
  }
}
