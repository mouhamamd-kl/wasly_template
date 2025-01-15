import 'package:flutter/material.dart';
import 'package:wasly_template/core/styles/custom_color_styles.dart';
import 'package:wasly_template/wasly_template.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  final List<BottomNavigationBarItem> items;

  const CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).removePadding(
        removeBottom: true,
        removeLeft: true,
        removeRight: true,
        removeTop: true,
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        selectedLabelStyle: CustomResponsiveTextStyles.headingH9.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.primaryBase,
        ),
        unselectedLabelStyle: CustomResponsiveTextStyles.headingH9.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.textSecondaryBase,
        ),
        currentIndex: selectedIndex,
        onTap: onTap,
        items: items,
        selectedItemColor: AppColors.primaryBase,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        backgroundColor: AppColors.backgroundAccent,
      ),
    );
  }
}
