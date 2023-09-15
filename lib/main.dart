import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gitone/home/hadeth/hadeeth_details.dart';
import 'package:gitone/home/home.dart';
import 'package:gitone/home/quran/details_elsura.dart';
import 'package:gitone/mytheme.dart';
import 'package:gitone/providers/app_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: ((context) => appProvider()), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    // var local = Provider.of<langlocal>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        detailSura.routeName: (context) => detailSura(),
        detailHadeeth.routeName: (context) => detailHadeeth(),
      },
      theme: ProjectTheme.lightmood,
      darkTheme: ProjectTheme.Darkmood,
      themeMode: provider.appTheme,
      locale: Locale(provider.lang),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      //locale: const Locale('ar'),
    );
  }
}
