// ignore_for_file: non_constant_identifier_names

import 'package:cv_afrik/core/icons.dart';
import 'package:cv_afrik/core/variables_global.dart';
import 'package:cv_afrik/vus/application/home.dart';
import 'package:cv_afrik/vus/application/settings.dart';
import 'package:cv_afrik/vus/application/templates.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final pages_list = const [HomePage(), TemplateListPages(), SettingsPage()];
  int selected_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages_list[selected_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => selected_index = index),
        selectedLabelStyle: primarystyle,
        unselectedLabelStyle: primarystyle,
        elevation: 0.0,
        currentIndex: selected_index,
        items: [
          BottomNavigationBarItem(
              activeIcon: const Iconify(icon_home2, color: Colors.blue),
              icon: Iconify(icon_home2, color: Colors.grey.withOpacity(0.7)),
              label: 'Home'),
          BottomNavigationBarItem(
              activeIcon: const Iconify(menu_icon3, color: Colors.blue),
              icon: Iconify(menu_icon3, color: Colors.grey.withOpacity(0.7)),
              label: 'Templates'),
          BottomNavigationBarItem(
              activeIcon: const Iconify(setting_icon, color: Colors.blue),
              icon: Iconify(setting_icon, color: Colors.grey.withOpacity(0.7)),
              label: 'Settings'),
        ],
      ),
    );
  }
}
