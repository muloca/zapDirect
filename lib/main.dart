import 'package:flutter/material.dart';
import 'package:zapdirect/views/about.dart';
import 'package:zapdirect/views/newchat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zap Direct',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ZapDirect'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(widget.title),
            ),
            body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [NewChat(), InfoView()]),
            bottomNavigationBar: Container(
              color: Colors.green,
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.green[100],
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.message),
                    text: 'Mensagem',
                  ),
                  //Tab(
                  //  icon: Icon(Icons.group),
                  //  text: 'Grupo',
                  //),
                  Tab(
                    icon: Icon(Icons.info),
                    text: 'Info',
                  ),
                ],
              ),
            )));
  }
}
