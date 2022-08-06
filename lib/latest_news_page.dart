import "package:flutter/material.dart";

class LatestNewsPage extends StatefulWidget {
  const LatestNewsPage({Key? key}) : super(key: key);

  @override
  State<LatestNewsPage> createState() => _LatestNewsPageState();
}

class _LatestNewsPageState extends State<LatestNewsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            // leading: IconButton(
            //     onPressed: () => Scaffold.of(context).openDrawer(),
            //     icon: Icon(Icons.add)),
            ),
        body: Column(
          children: [
            ListView(),
            ListView(),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Daryo"),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text("Lotincha"),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Kirilcha"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
