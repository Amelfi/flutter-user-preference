import 'package:flutter/material.dart';
import 'package:preference_app/providers/settings_providers.dart';
import 'package:preference_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const settingsScreenRoute = 'settings';

  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'),
      ),
      drawer: const CustomDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              SwitchListTile.adaptive(
                  title: const Text('Is Darkmode'),
                  value: settings.isDarkMode,
                  onChanged: (value) {
                    settings.isDarkMode = value;
                  }),
              RadioListTile.adaptive(
                  title: const Text('Masculino'),
                  value: 1,
                  groupValue: settings.gender,
                  onChanged: (value) {
                    settings.gender = value;
                  }),
              RadioListTile.adaptive(
                  title: const Text('Femenino'),
                  value: 2,
                  groupValue: settings.gender,
                  onChanged: (value) {
                    settings.gender = value;
                  }),
              TextFormField(
                  initialValue: settings.name,
                  onChanged: (value) {
                    settings.name = value;
                  })
            ],
          ),
        ),
      ),
    );
  }
}
