import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class TabPerson extends StatelessWidget {
  const TabPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      // child: Container(
      //   width: 50,
      //   height: 50,
      //   color: Colors.black87,
      // ), // Box 생성
      // Container or SizedBox
      // 네모박스 넣을땐 Container

      child: Image.asset('assets/test.png'), // image
      // child: Icon(Icons.people), // icon
    );

    //   // touch scroll
    // return CupertinoPageScaffold(
    //   child: CupertinoScrollbar(
    //     thickness: 6.0,
    //     thicknessWhileDragging: 10.0,
    //     radius: const Radius.circular(34.0),
    //     radiusWhileDragging: Radius.zero,
    //     child: ListView.builder(
    //       itemCount: 120,
    //       itemBuilder: (context, index) {
    //         return Center(
    //           child: Text('item $index',
    //               style: CupertinoTheme.of(context).textTheme.textStyle),
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
