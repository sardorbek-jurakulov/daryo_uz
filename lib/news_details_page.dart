import "package:flutter/material.dart";

class NewsDetailsPage extends StatefulWidget {
  const NewsDetailsPage({Key? key}) : super(key: key);

  @override
  State<NewsDetailsPage> createState() => _NewsDetailsPageState();
}

class _NewsDetailsPageState extends State<NewsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(args["category"] ?? "Batafsil"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Row(),
                  Row(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
