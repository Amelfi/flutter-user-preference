import 'package:flutter/material.dart';
import 'package:preference_app/providers/settings_providers.dart';
import 'package:preference_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const homeScreenRoute = 'home';

  @override
  Widget build(BuildContext context) {
    final settingsData = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('is Dark mode ${settingsData.isDarkMode}'),
            const Divider(),
            Text('Gender ${settingsData.gender == 1 ? 'Masculino': 'Femenino'}'),
            const Divider(),
            Text('Nombre usuario ${settingsData.name}')
          ],
        ),
      ),
    );
  }
}
