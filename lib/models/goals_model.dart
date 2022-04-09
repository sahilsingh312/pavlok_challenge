import 'package:pavlok_challenge/theme/app_assets.dart';

class GoalsModel {
  final String title;
  final String image;

  GoalsModel(this.title, this.image);
}

List<GoalsModel> goodHabitGoals = [
  GoalsModel('Set bedtime and wake up', AppAssets.timer),
  GoalsModel('Take a walk', AppAssets.walk),
  GoalsModel('Stay hydrated', AppAssets.bottle),
  GoalsModel('Call parents', AppAssets.call),
  GoalsModel('Donate to charity', AppAssets.donate),
];

List<GoalsModel> badHabitGoals = [
  GoalsModel('Can’t wake up ', AppAssets.timer),
  GoalsModel('Getting lazy for workout', AppAssets.walk),
  GoalsModel('Forgetting to drink water', AppAssets.bottle),
  GoalsModel('Spending on credit cards', AppAssets.donate),
];