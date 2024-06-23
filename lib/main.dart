import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Column(children: <Widget>[
                    SizedBox(height: 32), // For status bar padding
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF1E1E1E),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.search, color: Colors.white54),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search locations, cities',
                                      hintStyle:
                                          TextStyle(color: Colors.white54),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Icon(Icons.settings, color: Color(0xFFFFA500)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF1E1E1E),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.notifications,
                              color: Color(0xFFFFA500)),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    const TabBar(
                      dividerColor: Colors.transparent,
                      labelColor: Color(0xffEEA81B),
                      unselectedLabelColor: Color(0xffFFFFFF),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3,
                      indicatorColor: Color(0xffEEA81B),
                      indicatorPadding:
                          EdgeInsetsDirectional.only(start: 16, end: 16),
                      tabs: <Widget>[
                        Tab(
                          text: 'Locales',
                          // icon: Icon(Icons.cloud_outlined),
                        ),
                        Tab(
                          text: 'Locales',
                          // icon: Icon(Icons.beach_access_sharp),
                        ),
                      ],
                    ),
                  ])),
            ],
          ),
          backgroundColor: Color(0xFF0F0F0F),
          toolbarHeight: 122,
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
          ],
        ),
      ),
    );
  }
}
