import 'package:flutter/material.dart';
import 'package:pavlok_challenge/theme/app_assets.dart';
import 'package:pavlok_challenge/theme/colors.dart';
import 'package:pavlok_challenge/widgets/primary_button.dart';
import 'package:pavlok_challenge/widgets/tab_bar_habit.dart';

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
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.066),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.074),
              Row(
                children: [
                  const Spacer(),
                  SizedBox(
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
                  Padding(
                    padding:  EdgeInsets.only(left: screenWidth * 0.086),
                    child: Text('1 of 4', style: Theme.of(context).textTheme.subtitle1),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.043),
              Text('What’s your main goal?', style: Theme.of(context).textTheme.bodyText1),
              SizedBox(height: screenHeight * 0.012),
              Text('Let’s start with one of these habits.', style: Theme.of(context).textTheme.subtitle2),
              SizedBox(height: screenHeight * 0.058),
              const TabBarHabit(),

            ],
          ),
        ),
      ),
      bottomNavigationBar: const PrimaryButton()

    );
  }
}
