import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class TabPerson extends StatelessWidget {
  const TabPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text("scroll title"),
      ),
      child: CupertinoScrollbar(
        thickness: 6.0,
        thicknessWhileDragging: 10.0,
        radius: const Radius.circular(34.0),
        radiusWhileDragging: Radius.zero,
        child: ListView.builder(
          itemCount: 120,
          itemBuilder: (context, index) {
            return Center(
              child: Text('item $index',
                  style: CupertinoTheme.of(context).textTheme.textStyle),
            );
          },
        ),
      ),
    );
  }
}
