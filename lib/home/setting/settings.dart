import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gitone/providers/app_provider.dart';
import 'package:provider/provider.dart';

class ClickSetting extends StatefulWidget {
  @override
  State<ClickSetting> createState() => _ClickSettingState();
}

class _ClickSettingState extends State<ClickSetting> {
  int themeValue = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    return Column(
      children: [
        SizedBox.square(
          dimension: 30,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey,
          ),
          padding: EdgeInsets.all(60),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppLocalizations.of(context)!.theme,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              ElevatedButton(
                onPressed: () {
                  provider.changeTheme(ThemeMode.light);
                },
                child: Icon(Icons.sunny),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
              ),
              ElevatedButton(
                onPressed: () {
                  provider.changeTheme(ThemeMode.dark);
                },
                child: Icon(Icons.dark_mode_sharp),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey,
          ),
          padding: EdgeInsets.all(50),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppLocalizations.of(context)!.language,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextButton(
                onPressed: () {
                  provider.changeLanguage('ar');
                },
                child: Text(
                  AppLocalizations.of(context)!.arabic,
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
              ),
              TextButton(
                onPressed: () {
                  provider.changeLanguage('en');
                },
                child: Text(AppLocalizations.of(context)!.english,
                    style: TextStyle(color: Colors.white)),
                style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
