import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
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

  List<String> displayingNewsType = [
    "So'ngi yangiliklar",
    "Asosiy yangiliklar",
    "Eng ko'p o'qilgan",
  ];

  String selectedTitle = "";

  bool isLatinChecked = true;

  @override
  Widget build(BuildContext context) {
    int lengthOfNews = news.length;
    selectedTitle = displayingNewsType[0];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // leading: Builder(
          //   builder: (BuildContext context) {
          //     return IconButton(
          //       icon: const Icon(
          //         Icons.menu,
          //         // Changing Drawer Icon Size
          //       ),
          //       onPressed: () {
          //         Scaffold.of(context).openDrawer();
          //       },
          //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          //     );
          //   },
          // ),
          // title: Text(
          //   selectedTitle,
          // ),
          actions: <Widget>[
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (BuildContext context) {
                        return IconButton(
                          icon: const Icon(
                            Icons.menu,
                            // Changing Drawer Icon Size
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          tooltip: MaterialLocalizations.of(context)
                              .openAppDrawerTooltip,
                        );
                      },
                    ),
                    Text(
                      selectedTitle,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.search),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          primary: Colors.blue,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        child: Text("So'ngi yangiliklar"),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: lengthOfNews,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      createNews(),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xff1180b6),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Daryo",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        // Container(
                        //   height: 35,
                        //   decoration: BoxDecoration(
                        //     border: Border.all(
                        //       color: Colors.white,
                        //     ),
                        //     borderRadius: const BorderRadius.all(
                        //       Radius.circular(10.0),
                        //     ),
                        //   ),
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(10.0),
                        //     child: Row(
                        //       children: [
                        //         TextButton(
                        //           style: TextButton.styleFrom(
                        //             backgroundColor: isLatinChecked
                        //                 ? Colors.white
                        //                 : Color(0xff1180b6),
                        //             shape: const BeveledRectangleBorder(
                        //               borderRadius: BorderRadius.all(
                        //                 Radius.circular(0),
                        //               ),
                        //             ),
                        //           ),
                        //           onPressed: () {
                        //             setState(() {
                        //               isLatinChecked = !isLatinChecked;
                        //             });
                        //           },
                        //           child: Text(
                        //             "Lotincha",
                        //             style: TextStyle(
                        //               color: isLatinChecked
                        //                   ? Color(0xff1180b6)
                        //                   : Colors.white,
                        //             ),
                        //           ),
                        //         ),
                        //         TextButton(
                        //           style: TextButton.styleFrom(
                        //             backgroundColor: !isLatinChecked
                        //                 ? Colors.white
                        //                 : Color(0xff1180b6),
                        //             shape: const BeveledRectangleBorder(
                        //               borderRadius: BorderRadius.all(
                        //                 Radius.circular(0),
                        //               ),
                        //             ),
                        //           ),
                        //           onPressed: () {
                        //             setState(() {
                        //               isLatinChecked = !isLatinChecked;
                        //             });
                        //           },
                        //           child: Text(
                        //             "Кириллча",
                        //             style: TextStyle(
                        //               color: !isLatinChecked
                        //                   ? Color(0xff1180b6)
                        //                   : Colors.white,
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        Row(
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: isLatinChecked
                                    ? const Color(0xffffffff)
                                    : const Color(0xff1180b6),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(11),
                                    bottomLeft: Radius.circular(11),
                                  ),
                                ),
                                side: const BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  isLatinChecked = !isLatinChecked;
                                });
                              },
                              child: Text(
                                "Lotincha",
                                style: TextStyle(
                                  color: isLatinChecked
                                      ? const Color(0xff1180b6)
                                      : const Color(0xffffffff),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: !isLatinChecked
                                    ? const Color(0xffffffff)
                                    : const Color(0xff1180b6),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(11),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                                side: const BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  isLatinChecked = !isLatinChecked;
                                });
                              },
                              child: Text(
                                "Кириллча",
                                style: TextStyle(
                                  color: !isLatinChecked
                                      ? Color(0xff1180b6)
                                      : Colors.white,
                                ),
                              ),
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
                    Divider(),
                    Row(),
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
