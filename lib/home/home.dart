import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gitone/home/hadeth/hadethtab.dart';
import 'package:gitone/home/quran/qurantab.dart';
import 'package:gitone/home/radio/radiotab.dart';
import 'package:gitone/home/sebha/sebhatab.dart';
import 'package:gitone/home/setting/settings.dart';
import 'package:gitone/providers/app_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    return Stack(
      children: [
        provider.isdark()
            ? Image.asset(
                'assets/image/darkbg.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              )
            : Image.asset('assets/image/default_bg.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selected,
              onTap: (index) {
                selected = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.quran,
                    icon: ImageIcon(
                      AssetImage('assets/image/icon_quran.png'),
                    )),
                BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.hadeth,
                    icon: ImageIcon(
                      AssetImage('assets/image/icon_hadeth.png'),
                    )),
                BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.sebha,
                    icon: ImageIcon(
                      AssetImage('assets/image/icon_sebha.png'),
                    )),
                BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.radio,
                    icon: ImageIcon(
                      AssetImage('assets/image/icon_radio.png'),
                    )),
                BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.settings,
                    icon: Icon(Icons.settings))
              ],
            ),
          ),
          body: tab[selected],
        )
      ],
    );
  }

  List<Widget> tab = [
    clickQuran(),
    clickhadeth(),
    clicksebha(),
    clickradio(),
    ClickSetting(),
  ];
}
