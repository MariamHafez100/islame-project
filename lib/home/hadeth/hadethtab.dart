import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gitone/home/hadeth/hadeeth_details.dart';
import 'package:gitone/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class clickhadeth extends StatefulWidget {
  @override
  State<clickhadeth> createState() => _clickhadethState();
}

class _clickhadethState extends State<clickhadeth> {
  List<Ahadeeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty) {
      loadHadeeth();
    }
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
            child: Image.asset(
          'assets/image/hadeeths.png',
        )),
        Divider(
            height: 10, color: Theme.of(context).primaryColor, thickness: 3),
        Text(
          AppLocalizations.of(context)!.hadeeth,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Divider(
          height: 10,
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        hadethList.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ))
            : Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, detailHadeeth.routeName,
                              arguments: Hadeethdetailsarg(
                                name: hadethList[index].title,
                                content: hadethList[index].body,
                              ));
                        },
                        child: Text(
                          hadethList[index].title,
                          style: Theme.of(context).textTheme.titleSmall,
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        thickness: 2,
                      );
                    },
                    itemCount: hadethList.length),
              )
      ],
    );
  }

  void loadHadeeth() async {
    String hadeethFile =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> content = hadeethFile.split('#\r\n');
    for (int i = 0; i < content.length; i++) {
      //print(content[i]);
      List<String> linecontent = content[i].split('\n');
      String title = linecontent[0];
      linecontent.removeAt(0);
      Ahadeeth hadethObj = Ahadeeth(title: title, body: linecontent);
      hadethList.add(hadethObj);
      setState(() {});
    }
  }
}

class Ahadeeth {
  String title;
  List<String> body;

  Ahadeeth({required this.title, required this.body});
}
