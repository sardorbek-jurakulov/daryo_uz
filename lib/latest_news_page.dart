import "package:flutter/material.dart";
import "package:daryo_uz_clone/models/news_model.dart";

class LatestNewsPage extends StatefulWidget {
  const LatestNewsPage({Key? key}) : super(key: key);

  @override
  State<LatestNewsPage> createState() => _LatestNewsPageState();
}

class _LatestNewsPageState extends State<LatestNewsPage> {
  List<News> news = [
    News(
      "Dunyo",
      "",
      "Kanada mudofaa vaziri mamlakatda 33 mingdan ortiq ukrainalik askarni tayyorlaganini aytdi",
      "17:45",
      646,
    ),
    News(
      "Mahalliy",
      "",
      "Chilonzorda katta daraxtlar ildiziga shikast yetkazgan tashkilotga 261 mln so'm jarima belgilandi",
      "17:45",
      1502,
    ),
    News(
      "Madaniyat, Mahalliy",
      "",
      "Namangan viloyat teatrida yangi mavsum \"Ibrat\" tarixiy drammasi premyerasi bilan boshlandi",
      "17:16",
      2991,
    ),
    News(
      "Sport",
      "",
      "Konor Makregor MMA'dagi faoliyatini yakunlashiga ishora qildi",
      "17:45",
      646,
    ),
    News(
      "Maslahatlar",
      "",
      "Foydali maslahat: supermarketda kamroq pul sarflashning 7 usuli",
      "17:45",
      646,
    ),
    News(
      "Shou-biznes",
      "",
      "Kir yuvish mashinasidan ot fermasigacha: Gollivud yulduzlari ilk gonorarini nimaga sarflagan?",
      "17:45",
      646,
    ),
  ];

  Widget createNews() {
    return Column(
      children: [
        Row(
          children: [],
        ),
        Row(
          children: [],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    int lengthOfNews = news.length;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            // leading: IconButton(
            //     onPressed: () => Scaffold.of(context).openDrawer(),
            //     icon: Icon(Icons.add)),
            ),
        body: Column(
          children: [
            ListView(
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("So'ngi yangiliklar"),
                    )
                  ],
                )
              ],
            ),
            ListView.builder(
                itemCount: lengthOfNews,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      createNews(),
                      Divider(),
                    ],
                  );
                }),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF1180b6),
                ),
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
                    Row(
                      children: [
                        Text("Toshkent"),
                        Row(
                          children: [
                            Icon(Icons.sunny),
                            Text("37"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  child: Column(
                children: [
                  ListTile(
                    title: Text("Qo'llanma ekranni ko'rsatish"),
                  ),
                  ListTile(
                    title: Text("So'ngi yangiliklar"),
                  ),
                  ListTile(
                    title: Text("Mahalliy"),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
