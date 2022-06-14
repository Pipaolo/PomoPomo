import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    super.key,
    required this.activeIndex,
    required this.setActiveIndex,
  });

  final int activeIndex;
  final Function(int index) setActiveIndex;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedBottomNavigationBar(
      backgroundColor: colorScheme.surfaceVariant,
      icons: const [
        FontAwesomeIcons.clock,
        FontAwesomeIcons.gear,
      ],
      iconSize: 22,
      gapLocation: GapLocation.center,
      leftCornerRadius: 20,
      rightCornerRadius: 20,
      // notchMargin: 12,
      // notchSmoothness: NotchSmoothness.smoothEdge,
      activeColor: colorScheme.onSurfaceVariant,
      inactiveColor: Colors.grey.shade500,
      activeIndex: activeIndex,
      onTap: setActiveIndex,
    );
  }
}
