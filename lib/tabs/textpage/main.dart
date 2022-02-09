import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';

class TextPage extends StatefulWidget {
  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> with TickerProviderStateMixin {
  String Debugging = '';
  String Structuur = '';
  String Apps = '';
  fetchFileData1() async {
    String awaittext1 = '';
    awaittext1 = await rootBundle.loadString('lib/tabs/textpage/text_files/debugging.txt');
    setState(() {
      Debugging = awaittext1;
    });
  }

  fetchFileData2() async {
    String awaittext2 = '';
    awaittext2 = await rootBundle.loadString('lib/tabs/textpage/text_files/structuur.txt');
    setState(() {
      Structuur = awaittext2;
    });
  }

  fetchFileData3() async {
    String awaittext3 = '';
    awaittext3 = await rootBundle.loadString('lib/tabs/textpage/text_files/apps.txt');
    setState(() {
      Apps = awaittext3;
    });
  }

  late TabController _tabController;

  @override
  void initState() {
    fetchFileData1();
    fetchFileData2();
    fetchFileData3();
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
  }

  static const List<Tab> _tabs = [
    Tab(icon: Icon(Icons.computer), text: 'debugging'),
    Tab(icon: Icon(Icons.house), text: 'structuur'),
    Tab(icon: Icon(Icons.smartphone), text: 'apps'),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            centerTitle: true,
            title: const Text('Mijn Ervaringen', style: TextStyle(fontFamily: 'RobotoSlabs'),),
            bottom: const TabBar(
              tabs: _tabs,
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text(Debugging)),
              Center(child: Text(Structuur)),
              Center(child: Text(Apps)),
            ],
          ),
        ),
      ),
    );
  }
}
