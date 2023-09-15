import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gitone/mytheme.dart';
import 'package:gitone/providers/app_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class clickradio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(
          flex: 2,
        ),
        Image.asset('assets/image/dido.png'),
        Spacer(
          flex: 2,
        ),
        Text(
          AppLocalizations.of(context)!.eza3a,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Spacer(
          flex: 1,
        ),
        provider.isdark()
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.skip_previous,
                      size: 50, color: ProjectTheme.yelloo),
                  Icon(Icons.play_arrow_sharp,
                      size: 50, color: ProjectTheme.yelloo),
                  Icon(Icons.skip_next, size: 50, color: ProjectTheme.yelloo),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.skip_previous,
                    size: 50,
                    color: Theme.of(context).primaryColor,
                  ),
                  Icon(Icons.play_arrow_sharp,
                      size: 50, color: Theme.of(context).primaryColor),
                  Icon(Icons.skip_next,
                      size: 50, color: Theme.of(context).primaryColor),
                ],
              ),
        Spacer(
          flex: 2,
        )
      ],
    );
  }
}
