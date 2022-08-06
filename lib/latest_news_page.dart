import "package:flutter/material.dart";

class LatestNewsPage extends StatelessWidget {
  const LatestNewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ListView(),
            ListView(),
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}
