import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gitone/providers/app_provider.dart';
import 'package:provider/provider.dart';

class detailSura extends StatefulWidget {
  static const String routeName = 'surascreen';

  @override
  State<detailSura> createState() => _detailSuraState();
}

class _detailSuraState extends State<detailSura> {
  List<String> empty = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    var argus = ModalRoute.of(context)?.settings.arguments as suradetailsarg;
    if (empty.isEmpty) {
      loadfile(argus.index);
    }
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
              ? empty.length == 0
                  ? Center(child: CircularProgressIndicator())
                  : Container(
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
                            '${empty[index]} ﴿${index + 1}﴾',
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            style: Theme.of(context).textTheme.titleMedium,
                          );
                        },
                        itemCount: empty.length,
                      ),
                    )
              : empty.length == 0
                  ? Center(child: CircularProgressIndicator())
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
                            '${empty[index]} ﴿${index + 1}﴾',
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            style: Theme.of(context).textTheme.titleMedium,
                          );
                        },
                        itemCount: empty.length,
                      ),
                    ),
        )
      ],
    );
  }

  void loadfile(int index) async {
    String elsura =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = elsura.split('\n');
    empty = lines;
    setState(() {});
  }
}

class suradetailsarg {
  String name;
  int index;

  suradetailsarg({required this.name, required this.index});
}
