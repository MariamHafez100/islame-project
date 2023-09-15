import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class clicksebha extends StatefulWidget {
  @override
  State<clicksebha> createState() => _clicksebhaState();
}

class _clicksebhaState extends State<clicksebha> {
  int times = 0;

  int index = 0;

  double rotationAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    List<String> tasabeh = [
      AppLocalizations.of(context)!.subhan,
      AppLocalizations.of(context)!.elhamdollah,
      AppLocalizations.of(context)!.allah,
      AppLocalizations.of(context)!.allahak
    ];
    void _rotateImage() {
      times++;
      if (times % 33 == 0) {
        index++;
      }
      if (index == tasabeh.length) {
        index = 0;
      }

      setState(() {});

      setState(() {
        rotationAngle += 0.1; // Adjust the rotation angle as desired
      });
    }

    return Center(
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/image/hodo.png')),
              GestureDetector(
                onTap: () {
                  times++;
                  if (times % 33 == 0) {
                    index++;
                  }
                  if (index == tasabeh.length) {
                    index = 0;
                    return;
                  }
                  //print(index);
                  setState(() {});
                  setState(() {
                    rotationAngle +=
                        0.1; // Adjust the rotation angle as desired
                  });
                },
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 75),
                    child: Transform.rotate(
                        angle: rotationAngle,
                        child: Image.asset('assets/image/bodo.png'))),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            AppLocalizations.of(context)!.tasbehat,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xcdb7935f),
            ),
            child: Text(
              '$times',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).primaryColor,
              ),
              padding: EdgeInsets.all(15),
              child: Text(
                '${tasabeh[index]}',
                style: Theme.of(context).textTheme.titleSmall,
              )),
          Spacer(
            flex: 3,
          )
        ],
      ),
    );
  }
}
