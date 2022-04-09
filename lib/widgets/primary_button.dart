import 'package:flutter/material.dart';
import 'package:pavlok_challenge/constants/routes.dart';
import 'package:pavlok_challenge/theme/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
          top: 12,
          bottom: 32,
          left: screenWidth * 0.066,
          right: screenWidth * 0.066),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            const BoxShadow(
              color: Color(0xFFBDACFB),
              offset: Offset(0.0, 8.0),
              blurRadius: 20.0,
            ),
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.3),
              offset: const Offset(0, -3),
              blurRadius: 10.0,
            ),
            BoxShadow(
              color: const Color(0xFFFFFFFF).withOpacity(0.5),
              offset: const Offset(3, 1),
              blurRadius: 15.0,
            ),
          ],
          gradient: const LinearGradient(
              begin: Alignment(0.0, 0.0),
              end: Alignment(-0.707, -0.707),
              colors: [CustomColors.primary, Color(0xFF7F5BFF)]),
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, mainGoalRoute);
          },
          child: Text(
            'Next',
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
