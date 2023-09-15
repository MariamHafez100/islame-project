import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gitone/providers/app_provider.dart';
import 'package:provider/provider.dart';

class detailHadeeth extends StatefulWidget {
  static const String routeName = 'Hadeethscreen';

  @override
  State<detailHadeeth> createState() => _detailHadeethState();
}

class _detailHadeethState extends State<detailHadeeth> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    var argus = ModalRoute.of(context)?.settings.arguments as Hadeethdetailsarg;

    return Stack(
      children: [
        provider.isdark()
            ? Image.asset('assets/image/darkbg.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill)
            : Image.asset('assets/image/default_bg.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text('${argus.name} ⏯ '),
          ),
          body: provider.isdark()
              ? Container(
                  padding: EdgeInsets.only(top: 30),
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.1,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Text(
                          argus.content[index],
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: Theme.of(context).textTheme.titleMedium,
                        );
                      },
                      itemCount: argus.content.length),
                )
              : Container(
                  padding: EdgeInsets.only(top: 30),
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.1,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    color: Colors.white,
                  ),
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Text(
                          argus.content[index],
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: Theme.of(context).textTheme.titleMedium,
                        );
                      },
                      itemCount: argus.content.length),
                ),
        )
      ],
    );
  }
}

class Hadeethdetailsarg {
  String name;

  List<String> content;

  //int index ;
  Hadeethdetailsarg({required this.name, required this.content});
}
