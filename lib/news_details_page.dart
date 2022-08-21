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
                      Text(
                        "${args["createdTime"]} | ${args["createdDate"]}" ??
                            "yangilik vaqti",
                        style: TextStyle(
                          color: Color(0xffababab),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(0xff337b94),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            args["numberOfViews"] ?? "ko'rishlar soni",
                            style: TextStyle(
                              color: Color(0xff337b94),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    args["title"] ?? "Sarlavha",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    args["tldr"] ?? "Sarlavha",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset(args["imagePath"] ?? "Rasm"),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Foto: ${args["imageSource"] ?? "rasm manbasi"}',
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    args["description"] ?? "Batafsil",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
