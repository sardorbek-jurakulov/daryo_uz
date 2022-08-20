import 'package:flutter/material.dart';
import "package:daryo_uz_clone/palette.dart";
import 'package:daryo_uz_clone/latest_news_page.dart';
import "package:daryo_uz_clone/news_details_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          primarySwatch: Palette.bToDark,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => LatestNewsPage(),
          "/news/details": (context) => NewsDetailsPage(),
        }
        // home: LatestNewsPage(),
        );
  }
}
