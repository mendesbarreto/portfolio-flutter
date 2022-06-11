import 'package:flutter/material.dart';

import 'features/left_menu/presentation/widgets/left_menu.dart';
import 'features/main_menu/presentation/widgets/main_menu.dart';
import 'features/right_menu/presentation/widgets/right_menu.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          primaryColor: const Color(0xFFFFB400),
          buttonColor: const Color(0xFFFFB502),
          fontFamily: 'Inter',
          textTheme: const TextTheme(
            headline3: TextStyle(
              color: Color(0xff2b2b2b),
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            subtitle1: TextStyle(
              color: Color(0xff767676),
              fontSize: 14,
              height: 24.0 / 16,
              fontWeight: FontWeight.normal,
            ),
          )),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: const Color(0xFFEFF0F7),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //Center Column contents vertically,//Center Column contents horizontally
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //Center Column contents vertically,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //Center Column contents horizontally
                    children: <Widget>[
                      const SizedBox(width: 22),
                      SizedBox(
                        width: 288,
                        child: Container(
                            color: Colors.white, child: const LeftMenu()),
                      ),
                      const SizedBox(width: 8),
                      const SizedBox(
                        width: 990,
                        height: 550,
                        child: MainMenu(),
                      ),
                      const SizedBox(width: 8),
                      const SizedBox(
                        width: 100,
                        child: RightMenu(),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}
