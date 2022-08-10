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
          shadowColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 15,
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
                        fontSize: 18,
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
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 188,
                child: DrawerHeader(
                  margin: EdgeInsets.zero,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                  decoration: const BoxDecoration(
                    color: Color(0xff1180b6),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Daryo",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              // fontWeight: FontWeight.w500,
                            ),
                          ),
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
                                  padding: EdgeInsets.only(left: 5, right: 5),
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
                                        ? const Color(0xff1180b6)
                                        : const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Toshkent",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Color(0xffffffff),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 10,
                                ),
                                child: const Icon(
                                  CupertinoIcons.sun_max,
                                  size: 34,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              const Text(
                                "37\u00b0C",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: 30,
                        thickness: 1,
                        color: const Color(0xffffffff).withOpacity(0.7),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 3,
                                ),
                                child: const Icon(
                                  CupertinoIcons.money_dollar_circle,
                                  color: Color(0xffffffff),
                                  size: 25,
                                ),
                              ),
                              const Text(
                                "10919.89",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 3,
                                ),
                                child: const Icon(
                                  CupertinoIcons.money_dollar_circle,
                                  color: Color(0xffffffff),
                                  size: 25,
                                ),
                              ),
                              const Text(
                                "11125.18",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 3,
                                ),
                                child: const Icon(
                                  CupertinoIcons.money_rubl_circle,
                                  color: Color(0xffffffff),
                                  size: 25,
                                ),
                              ),
                              const Text(
                                "181.47",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    title: Text(
                      "Qo'llanma ekranni ko'rsatish",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xfffffbc9),
                  ),
                  const ListTile(
                    title: Text(
                      "So'ngi yangiliklar",
                      style: TextStyle(
                        color: Color(0xff1e96f0),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffffffff),
                  ),
                  const ListTile(
                    title: Text(
                      "Mahalliy",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffffffff),
                  ),
                  const ListTile(
                    title: Text(
                      "Dunyo",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffffffff),
                  ),
                  const ListTile(
                    title: Text(
                      "Texnologiyalar",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffffffff),
                  ),
                  const ListTile(
                    title: Text(
                      "Madaniyat",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffffffff),
                  ),
                  Divider(
                    height: 0,
                    thickness: 0.7,
                    color: const Color(0xff000000).withOpacity(0.3),
                  ),
                  const ListTile(
                    title: Text(
                      "Tanlangan xabarlar",
                      style: TextStyle(
                        color: Color(0xff5ebe03),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffffffff),
                  ),
                  Divider(
                    height: 0,
                    thickness: 0.7,
                    color: const Color(0xff000000).withOpacity(0.5),
                  ),
                  const ListTile(
                    title: Text(
                      "Avto",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffffffff),
                  ),
                  const ListTile(
                    title: Text(
                      "Sport",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffffffff),
                  ),
                  ListTile(
                    title: Text(
                      "Foto",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffffffff),
                  ),
                  ListTile(
                    title: Text(
                      "Lifestyle",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffffffff),
                  ),
                  ListTile(
                    title: Text(
                      "Kolumnistlar",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffffffff),
                  ),
                  ListTile(
                    title: Text(
                      "Afisha",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffececec),
                  ),
                  ListTile(
                    title: Text(
                      "Valyutalar kursi",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffececec),
                  ),
                  ListTile(
                    title: Text(
                      "Ob-havo",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffececec),
                  ),
                  ListTile(
                    title: Text(
                      "Foydalanish shartlari",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffececec),
                  ),
                  ListTile(
                    title: Text(
                      "\"Daryo\" haqida",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffececec),
                  ),
                  ListTile(
                    title: Text(
                      "Sozlamalar",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    tileColor: Color(0xffececec),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 56,
              // decoration: BoxDecoration(
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.grey.withOpacity(0.5),
              //       spreadRadius: 0,
              //       blurRadius: 1,
              //       offset: const Offset(0, 55), // changes position of shadow
              //     ),
              //   ],
              // ),
              child: ListView(
                padding: const EdgeInsets.only(
                  left: 100,
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          primary: Colors.blue,
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2,
                              color: Colors.blue.withOpacity(0.3),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text("So'ngi yangiliklar"),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          primary: Colors.blue,
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Asosiy yangiliklar"),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          primary: Colors.blue,
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Eng ko'p o'qilgan"),
                      ),
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
      ),
    );
  }
}
