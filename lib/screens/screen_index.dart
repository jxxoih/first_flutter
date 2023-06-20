import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_flutter_app/tabs/tab_person.dart';
import 'package:my_flutter_app/tabs/tab_chat.dart';
import 'package:my_flutter_app/tabs/tab_setting.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() {
    return _IndexScreenState();
  }
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentIndex = 0;

  final List<Widget> tabs = [TabPerson(), TabChat(), TabSetting()];
  final List<String> tabTitle = ["home", "chat", "setting"];
  @override
  Widget build(BuildContext context) {
    // 여기서 헤더와 푸터는 만들어졌고, body Component만 만들면 됨
    return Scaffold(
      appBar: AppBar(
        actions: [],
        leading: Icon(Icons.menu),
        title: Text(tabTitle[_currentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30.0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontSize: 12),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        enableFeedback: false,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "person"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.conversation_bubble), label: "chat"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
        ],
      ),
      body: tabs[_currentIndex],
    );
  }
}
