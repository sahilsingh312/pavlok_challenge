import 'package:flutter/material.dart';
import 'package:pavlok_challenge/theme/app_assets.dart';
import 'package:pavlok_challenge/theme/colors.dart';
import 'package:pavlok_challenge/theme/custom_icons.dart';

class TabBarHabit extends StatefulWidget {
  const TabBarHabit({Key? key}) : super(key: key);

  @override
  State<TabBarHabit> createState() => _TabBarHabitState();
}

class _TabBarHabitState extends State<TabBarHabit>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  _handleTabSelection() {
    setState(() {
      _currentIndex = _tabController.index;
    });
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Expanded(
          child: Column(
            children: <Widget>[
              TabBar(
                controller: _tabController,
                indicator: const UnderlineTabIndicator(
                    borderSide:
                        BorderSide(width: 3.0, color: CustomColors.primary),
                    insets: EdgeInsets.symmetric(horizontal: 16.0)),
                indicatorColor: CustomColors.primary,
                labelColor: CustomColors.primary,
                unselectedLabelColor: CustomColors.textSecondary,
                tabs: [
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          CustomIcons.leaf,
                          color: _tabController.index == 0
                              ? CustomColors.primary
                              : CustomColors.textSecondary,
                          size: 16,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Start a good habit',
                        ),
                      ],
                    ),
                    // text: 'Tab 1',
                  ),
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          CustomIcons.breakHabit,
                          color: _tabController.index == 1
                              ? CustomColors.primary
                              : CustomColors.textSecondary,
                          size: 16,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Break a bad habit',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
               Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: screenHeight * 0.044,),
                        Container(
                          height: 72,
                            width: screenWidth * 0.866,
                            decoration: BoxDecoration(
                              color: Color(0xFFF8F3FF),
                              borderRadius: BorderRadius.all(const Radius.circular(16.0)),
                              border: Border.all(
                                  color: Color(0xFF8338EC),
                                  width: 0.8,
                                  style: BorderStyle.solid
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF18274b),
                                  spreadRadius: -4,
                                  blurRadius: 40.0,
                                  offset: Offset(0, 14),
                                ),

                              ],
                            ),
                          child: Text("Hello all", style: TextStyle(color: Colors.black, fontSize: 20),),
                        ),
                      ],
                    ),
                    Center(
                      child: Text('Tab 2'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
