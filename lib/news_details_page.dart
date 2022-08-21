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
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 19,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Color(0xfff3f3f3),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ),
      ),
    );
  }
}
