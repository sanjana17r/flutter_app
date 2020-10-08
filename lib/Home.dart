import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'camera_tab.dart';
import 'calls_tab.dart';
import 'chats_tab.dart';
import 'status_tab.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TabController tab;
  bool showFab = false;

  @override
  void initState() {
    super.initState();
    tab = TabController(length: 4, vsync: null, initialIndex: 1);
    tab.addListener(() {
      if (tab.index == 1)
        showFab = true;
      else
        showFab = false;

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    bool showFab = false;
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(110.0),
              child: AppBar(
                title: Text('WhatsApp'),
                actions: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: null),
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      onPressed: null),
                ],
                bottom: TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    icon: Text('CHATS'),
                  ),
                  Tab(
                    icon: Text('STATUS'),
                  ),
                  Tab(
                    icon: Text('CALLS'),
                  )
                ]),
              )),
          body: TabBarView(
            children: [
              CameraScreen(),
              ChatScreen(),
              Status(),
              Calls(),
            ],
          ),
          floatingActionButton: showFab
              ? FloatingActionButton(
                  backgroundColor: Theme.of(context).accentColor,
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  onPressed: () => print('Open chats'),
                )
              : null,
        ));
  }
}
