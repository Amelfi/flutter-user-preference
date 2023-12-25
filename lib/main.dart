import 'package:flutter/material.dart';
import 'package:preference_app/preference/preference.dart';
import 'package:preference_app/providers/settings_providers.dart';
import 'package:preference_app/screens/screens.dart';
import 'package:preference_app/themes/dark_theme.dart';
import 'package:preference_app/themes/themes.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding();

  await Preference.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SettingsProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Provider.of<SettingsProvider>(context).isDarkMode;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.homeScreenRoute,
      routes: {
        HomeScreen.homeScreenRoute: (context) => const HomeScreen(),
        SettingsScreen.settingsScreenRoute: (context) => const SettingsScreen()
      },
      theme: isDarkMode ? DarkTheme.darkTheme : LightTheme.lightTheme,
    );
  }
}
