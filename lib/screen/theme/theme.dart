import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themechanger = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.deepPurple,
        title:const Center(child: Text("Theme change", style: TextStyle(color: Colors.white),)),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text("Light Mode"),
            value: ThemeMode.light, 
            groupValue: themechanger.themeMode, 
            onChanged: themechanger.setThemeMode,),
            RadioListTile<ThemeMode>(
            title: const Text("Dark Mode"),
            value: ThemeMode.dark, 
            groupValue: themechanger.themeMode, 
            onChanged: themechanger.setThemeMode,),RadioListTile<ThemeMode>(
            title: const Text("System Mode"),
            value: ThemeMode.system, 
            groupValue: themechanger.themeMode, 
            onChanged: themechanger.setThemeMode,)
        ],
      ),
    );
  }
}