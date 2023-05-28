import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_changer_provider.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
 
  @override
  Widget build(BuildContext context) {
     //
  final themeChangeDL = Provider.of<ThemeChange>(context); //////////////
   //
    return Scaffold(
      appBar: AppBar(title: Text('Dark Theme')),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
            value: ThemeMode.light, 
            groupValue: themeChangeDL.themeModeDL, ////////////
            onChanged: themeChangeDL.setTheme,///////////////
            ),
          RadioListTile<ThemeMode>(
            title: Text('Dark Mode'),
            value: ThemeMode.dark, 
            groupValue: themeChangeDL.themeModeDL, 
            onChanged: themeChangeDL.setTheme,
            ),
          RadioListTile<ThemeMode>(
            title: Text('System Mode'),
            value: ThemeMode.system, 
            groupValue: themeChangeDL.themeModeDL, 
            onChanged: themeChangeDL.setTheme,
            ),

        ],
      ),
    );
  }
}