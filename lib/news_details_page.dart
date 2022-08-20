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
          title: Text(
            args["category"] ?? "Batafsil",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 19,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Text("${args["createdTime"]} | ${args["createdDate"]}" ??
                      "yangilik vaqti"),
                  Row(
                    children: [
                      const Icon(Icons.remove_red_eye_outlined),
                      Text(args["numberOfViews"] ?? "ko'rishlar soni"),
                    ],
                  ),
                ],
              ),
              Text(args["title"] ?? "Sarlavha"),
              Text(args["tldr"] ?? "Sarlavha"),
              Image.asset(args["imagePath"] ?? "Rasm"),
              Text(args["description"] ?? "Batafsil")
            ],
          ),
        ),
      ),
    );
  }
}
