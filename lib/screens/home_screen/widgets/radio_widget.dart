import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class RadioWidget extends StatelessWidget {
  const RadioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_header.png"),
          SizedBox(height: 30),
          Text(
            AppLocalizations.of(context)!.quranRadio,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_previous,
                  size: 50,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow_rounded,
                  size: 75,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_next,
                  size: 50,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
