import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class TabPerson extends StatelessWidget {
  const TabPerson({super.key});

  @override
  Widget build(BuildContext context) {
    // 커스텀 디인 = MaterialApp 써야됨
    // return Visibility(
    //   // child: Container(
    //   //   width: 50,
    //   //   height: 50,
    //   //   color: Colors.black87,
    //   // ), // Box 생성
    //   // Container or SizedBox
    //   // 네모박스 넣을땐 Container

    //   child: Image.asset('assets/test.png'), // image
    //   // child: Icon(Icons.people), // icon
    // );

    return CupertinoApp(
      // Scaffold = 헤더 바디 푸터로 디자인 영역 나눔
      home: Scaffold(
        // appBar: AppBar(),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.infinity,
            height: 50,
            // margin: EdgeInsets.fromLTRB(20, 20, 50, 50),
            color: Colors.amber,
            // box border 등등등
            // decoration: BoxDecoration(
            //     color: Colors.amber,
            //     border: Border.all(color: Colors.black)),
          ),
        ),
      ),
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
