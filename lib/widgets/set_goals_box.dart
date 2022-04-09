import 'package:flutter/material.dart';
import 'package:pavlok_challenge/models/goals_model.dart';
import 'package:pavlok_challenge/theme/app_assets.dart';
import 'package:pavlok_challenge/theme/colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SetGoalsBox extends StatefulWidget {
  final GoalsModel goalsModel;
  final bool isSelected;

  const SetGoalsBox(this.goalsModel, this.isSelected, {Key? key})
      : super(key: key);

  @override
  State<SetGoalsBox> createState() => _SetGoalsBoxState();
}

class _SetGoalsBoxState extends State<SetGoalsBox> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        height: 72,
        width: screenWidth * 0.866,
        decoration: BoxDecoration(
          color: widget.isSelected ? const Color(0xFFF8F3FF) : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          border: widget.isSelected
              ? Border.all(
                  color: const Color(0xFF8338EC),
                  width: 0.8,
                  style: BorderStyle.solid)
              : Border.all(color: Colors.transparent),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF18274b),
              spreadRadius: -4,
              blurRadius: 40.0,
              offset: Offset(0, 14),
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            SizedBox(
              width: 56,
              height: 56,
              child: widget.isSelected
                  ? Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        widget.goalsModel.image,
                        width: 32,
                        height: 32,
                      ))
                  : Neumorphic(
                      style: NeumorphicStyle(
                        color: Colors.transparent,
                        depth: -5,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(16)),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 32,
                            width: 32,
                            child: Image.asset(
                              widget.goalsModel.image,
                            )),
                      )),
            ),
            const SizedBox(width: 12),
            Text(
              widget.goalsModel.title,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                  color: widget.isSelected
                      ? CustomColors.primaryDark
                      : CustomColors.textPrimary),
            ),
          ],
        ),
      ),
    );
  }
}
