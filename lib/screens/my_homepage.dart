import 'package:flutter/material.dart';
import 'package:pavlok_challenge/theme/colors.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.074),
            Center(
              child: SizedBox(
                width: screenWidth * 0.51,
                height: 7,
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(99)),
                  child: LinearProgressIndicator(
                    value: 0.25,
                    backgroundColor: CustomColors.dividers,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(CustomColors.yellow),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
