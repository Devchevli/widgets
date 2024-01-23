import 'package:code_struct/practical/widgets/ThemeChange_provider/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Theme_Screen extends StatefulWidget {
  const Theme_Screen({super.key});

  @override
  State<Theme_Screen> createState() => _Theme_ScreenState();
}

class _Theme_ScreenState extends State<Theme_Screen> {
  @override
  Widget build(BuildContext context) {
    final themeChangeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("ThemeChange"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RadioListTile(
            value: ThemeMode.light,
            title: const Text("lightTheme"),
            groupValue: themeChangeProvider.themechange,
            onChanged: themeChangeProvider.setTheme,
          ),
          RadioListTile(
            value: ThemeMode.dark,
            title: const Text("DarkTheme"),
            groupValue: themeChangeProvider.themechange,
            onChanged: themeChangeProvider.setTheme,
          ),
          RadioListTile(
            value: ThemeMode.system,
            title: const Text("systemTheme"),
            groupValue: themeChangeProvider.themechange,
            onChanged: themeChangeProvider.setTheme,
          ),
        ],
      ),
    );
  }
}
