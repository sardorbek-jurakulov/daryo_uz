import "package:flutter/material.dart";
import "package:daryo_uz_clone/models/news_model.dart";

class NewsCreator extends StatelessWidget {
  const NewsCreator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<News> news = [
      News(
        "Dunyo",
        "assets/images/canada_military_dunyo.jpeg",
        "Global Look Press",
        "Kanada mudofaa vaziri mamlakatda 33 mingdan ortiq ukrainalik askarni tayyorlaganini aytdi",
        """
      “Gazeta.ru” nashrining xabar berishicha, Kanada mudofaa vaziri Anita Anandning aytishicha, 2015-yildan beri Kanadaning UNIFIER dasturi doirasida 33 mingdan ortiq ukrainalik harbiy xizmatchilar o‘qitilgan. Bu haqda Ukraina qo‘shinlari bosh shtabi ijtimoiy tarmoqlarda ma’lum qilgan.
      """,
        """
      UNIFIER operatsiyasi davom etdi va bu yangi jihat Kanada tomonidan 2015-yildan beri Ukraina Qurolli kuchlarining 33 mingdan ortiq a’zosini o‘qitgan bir qator tadbirlarning eng so‘nggi qismidir, — deya vazirning so‘zlaridan iqtibos keltirgan Bosh shtab matbuot xizmati.
      Qayd etilishicha, Kanada tez orada Buyuk Britaniyaga ukrainalik harbiylarni front chizig‘ida jangovar harakatlar uchun zarur bo‘lgan individual ko‘nikmalarga yo‘naltirilgan maxsus dastur bo‘yicha o‘qitish uchun 225 nafar instruktorni yuboradi.
      Bosh shtabning qo‘shimcha qilishicha, 2022-yilning fevral oyidan beri Kanada Ukrainaga 626 million dollar, jumladan, harbiy yordam ko‘rinishida ajratgan. Unga artilleriya qismlari — M777 gaubitsalari, dron va zirhli texnikalar kiritilgan.

      Avvalroq Anand, shuningdek, Ottava Ukraina Qurolli kuchlari harbiylarini o‘qitish uchun Buyuk Britaniyaga mamlakatning 225 nafargacha askarini jo‘natishini aytgandi.
      """,
        "17:45",
        "20.08.2022",
        646,
      ),
      News(
        "Mahalliy",
        "assets/images/daraxtlar_mahalliy.jpeg",
        "Chilonzor tumani hokimligi",
        "Chilonzorda katta daraxtlar ildiziga shikast yetkazgan tashkilotga 261 mln so'm jarima belgilandi",
        "Toshkent shahri Chilonzor tumanida katta daraxtlarning ildiziga shikast yetkazilgani haqida xabar berilgandi. Ma’lum bo‘lishicha, quruvchi tashkilotga nisbatan jarima belgilangan.",
        """
      Ko‘chadagi kamida 7 ta daraxtga shikast yetkazilgan, buning uchun quruvchi tashkilotga 261 million so‘m jarima belgilandi. Ko‘chadagi umumiy 99 ta daraxtda shikastlanish xavfi aniqlangan.

      Mavzuga doir: Chilonzorda katta daraxtlar ildiziga shikast yetkazilgani o‘z isbotini topdi. Shahar hokimi voqea joyiga yetib borgan

      Ma’lumot uchun, faollar aralashuvidan keyin voqea joyiga bosh prokuror, Ekologiya qo‘mitasi raisi, Toshkent shahri hokimi va Prezident administratsiyasi vakillari yetib kelgan. Shahar hokimi Jahongir Ortiqxo‘jayev rekonstruksiya loyihasi o‘zgartirilishini aytdi: yo‘l toraytiriladi, yashil hudud kengaytiriladi, shikastlangan daraxtlar saqlab qolinadi.
      Daraxtlarni saqlab qolish uchun bor kuch-g‘ayratimizni ishga solamiz, bu birinchi marta emas, bunga allaqachon erishdik, — degan Ortiqxo‘jaev.
      Ta‘kidlanishicha, daraxtlarga shikast yetkazish bo‘yicha ishni prokuratura ko‘rib chiqadi, aybdorlar jazolanadi. Hozirda ko‘chada vaziyat tinch, faollar, mutasaddilar, huquq-tartibot idoralari xodimlari muammo va uning yechimini muhokama qildi.
      Chilonzor ko‘chasida ishchilar yo‘l qismini toraytirish uchun o‘rnatilgan beton ariqlarni demontaj qilishga kirishgan.

      Bosh prokuratura matbuot kotibining ma’lum qilishicha, rekonstruksiya qilish jarayonida daraxtlarga zarar yetkazilgani holati tashkilot tomonidan tekshirilmoqda. Natijasi haqida xabar qilinadi.

      """,
        "17:45",
        "19.08.2022",
        1502,
      ),
      News(
        "Madaniyat, Mahalliy",
        "assets/images/namangan_teatr_madaniyat_marifat.jpeg",
        "“Daryo” / Jahongir Akramov",
        "Namangan viloyat teatrida yangi mavsum \"Ibrat\" tarixiy drammasi premyerasi bilan boshlandi",
        "Namangan viloyat musiqali drama teatrida 91-mavsumning ochilish marosimi bo‘lib o‘tdi. Bu haqda “Daryo” muxbiri Azizbek Abduvaliyev xabar bermoqda.",
        """
      Yangi mavsum “Ibrat” tarixiy dramasi premyerasi bilan boshlandi. Namanganlik ijodkor Nurullo Abbosxon qalamiga mansub mazkur dramada ulug‘ ma’rifatparvar Is’hoqxon to‘ra Ibrat hayotining fojiali qirralari aks etgan.

      Asar keksa Is’hoqxon to‘ra Ibratning tergov jarayonlari bilan boshlanadi. So‘roq-savollar davomida u o‘tmishi haqida so‘zlab, yangi maktab ochishdagi qiyinchiliklar, chet ellarga safarlar, Namanganga ilk matbaa dastgohlarini olib kelinishi, maslakdosh jadidlar bilan uchrashuvlarni yodga oladi.

      Drama Is’hoqxon to‘raning o‘g‘li Abbos bilan hibsxonada ko‘rishi, ota-bolaning o‘limga hukm etilishi va bu zo‘riqishlarga chiday olmagan tergovchining joniga qasd qilishi bilan yakunlanadi.

      Drama boshidan oxirigacha kishini hayajonda tutib turadi. Uning mazmuni va aktyorlar mahorati tomoshabinlarga ma’qul kelganini spektakl yakunida yangragan olqishlardan ham payqash qiyin emasdi.

      Teatr mutasaddilarining bildirishicha, jamoa yangi mavsumda Qirg‘izistonning O‘sh akademik o‘zbek teatri bilan hamkorlikda “Manas o‘g‘li Semetey” spektaklini sahnalashtirish va uni Namangan hamda O‘shda tomoshabinlarga taqdim etishni ham rejalashtirmoqda.

      Mavzuga doir: Namanganda “Ibrat” filmining mamlakatdagi ilk namoyishi bo‘lib o‘tdi

      """,
        "17:16",
        "16.08.2022",
        2991,
      ),
      News(
        "Sport",
        "assets/images/conor_macgregor_sport.jpeg",
        "Getty Images",
        "Konor Makregor MMA'dagi faoliyatini yakunlashiga ishora qildi",
        "Ikki vazn toifasida UFC sobiq chempioni Konor Makgregor faoliyatini yakunlashiga ishora qildi.",
        """
      MMA, hech qachon seni unutmayman! Oson ish. Gollivudga ketayotganimga ishongim kelmayapti. Barchangiz men bilan faxrlanasiz”, — deb yozdi irlandiyalik ijtimoiy tarmoqdagi sahifasida.

      Avvalroq Konor Jeyk Jillenhol bosh rolni ijro etadigan filmda rol ijro etishi xabar qilingandi.

      Konor Makgregor so‘nggi jangini 2021-yil iyul oyi Dastin Poryega qarshi o‘tkazib, oyog‘ini sindirib olgandi. Porye texnik nokaut evaziga g‘alaba qozongan edi.
      """,
        "17:45",
        "11.08.2022",
        646,
      ),
      News(
        "Maslahatlar",
        "assets/images/supermarketda_kamroq_pul_sarflash_maslahatlar.jpeg",
        "Getty Images",
        "Foydali maslahat: supermarketda kamroq pul sarflashning 7 usuli",
        "Har bir kishi pulni havoga sovurmaslik va keraksiz narsalarni xarid qilmasligi uchun marketing hiylalari haqida bilishi kerak. Quyida sizga supermarket va do‘konlarda pulingizni tejashning oddiy qoidalarini o‘rgatamiz.",
        """
      Oziq-ovqat aravachalari

      Supermarketlarda oziq-ovqat aravalari kattalashganini payqadingizmi? Oldin unday emas edi, ammo savdo menejerlari oddiy bir narsaga e'tibor berishdi: xaridor bo‘sh aravani ko‘rsa, uni kamida yarmigacha mahsulot bilan to‘ldirishga intiladi — aravada juda ko‘p bo‘sh joy bo‘lsa va juda ko‘p foydali narsalar sig‘ishi mumkin. Agar oldindan kerakli xaridlar ro‘yxatini tuzmagan bo‘lsangiz, kiraverishda savat oling, bu sizni keraksiz narsalarni sotib olishdan xalos qiladi.

      Ko‘z balandligidagi javonlar

      Odatda sotish uchun eng yaxshi joylar ko‘z darajasidagi javonlardir. Barcha supermarketlar tovarlarni joylashtirishning ushbu usulini uzoq vaqtdan beri ishlatib kelmoqda. Markaziy javonlarda do‘konlar eng ko‘p foyda keltiradigan mahsulotlar mavjud. Agar supermarket uchun emas, balki o‘zingiz uchun eng yaxshi mahsulotni topmoqchi bo‘lsangiz, egilib, pastki javonlarni tekshirishingiz kerak bo‘ladi.

      Tovarlarni tekshirish hududi

      Kassa maydoni har qanday oziq-ovqat do‘konining qaynoq nuqtasidir: barcha xaridorlar, istisnosiz, u orqali o‘tadilar. Ularning ko‘pchiligi sotib olishni rejalashtirmagan mahsulotlarni avtomatik ravishda savatga solishadi. To‘lov zonasi impuls toifalarini sotishni ko‘paytirishda asosiy rollardan birini o‘ynaydi, budjetingizga sezilarli ta'sir qilmaydigan, ammo do‘konga qo‘shimcha daromad keltiradigan arzon tovarlar shu yerda mavjud. Siz hatto o‘ylamasdan shirinlik, saqich, shokolad va bir o‘ram batareya olsangiz ham do‘kon uchun foyda bo‘ladi.

      Tiyinli narxlar

      Ko‘pchilik narxlar nima uchun 0,99 yoki hatto 0,95 bilan tugaydi, deb hech o‘ylab ko‘rganmisiz? Bu borada ko‘plab tadqiqotlar olib borilgan. Ma'lum bo‘lishicha, avvallari iste'molchilar 9 bilan tugaydigan narxni chegirmalar yoki katta takliflar bilan bog‘lashga odatlangan. Bundan tashqari, xaridor nuqtaning chap tomonidagi raqamga ko‘proq e'tibor beradi. Shuning uchun, do‘konlar hali ham tiyinlarni ko‘rsatishda davom etmoqda, bu esa xaridorlarga real bo‘lmagan tejash xayolini beradi.

      Soxta chegirma va aksiyalar

      Ko‘pgina do‘konlar mijozlar bazasini jalb qilish uchun doimiy chegirmali savdo tizimini joriy qiladi. Axir xaridor qancha ko‘p bo‘lsa, shuncha foyda. Biroq bu aksiyalarning aksariyati pul tejashning illyuziyasidir. Chegirmali mahsulotni olishdan oldin uning narxi yaqin atrofda joylashgan boshqa ishlab chiqaruvchilarning mahsulotlariga qaraganda ancha pastmi yoki yo‘qligini diqqat bilan ko‘rib chiqing.

      Ko‘pincha vijdonsiz chakana sotuvchilar birinchi navbatda tovarlarning narxini oshirib, keyin esa chegirma qilishadi. Mijoz bunday mahsulotni aldanganiga shubha qilmasdan, go‘yoki katta chegirma bilan sotib oladi. Savdo sohasida, shuningdek, yaroqlilik muddati tugaydigan mahsulot narxining pasayishini nazarda tutuvchi chegirma mavjud. Bular reklama aksiyalarini olish ehtimoli yuqori bo‘lgan narsalardir, shuning uchun uni ishlatishdan oldin har doim mahsulotning amal qilish muddati tugamaganligini tekshirib ko‘ring.

      """,
        "17:45",
        "02.08.2022",
        646,
      ),
      News(
        "Shou-biznes",
        "assets/images/yulduzlar_shou_biznes.jpeg",
        "Getty Images",
        "Kir yuvish mashinasidan ot fermasigacha: Gollivud yulduzlari ilk gonorarini nimaga sarflagan?",
        "Mashhurlar har doim ham hashamatli uylar va yaxtalarning egalari bo‘lmagan. Deyarli har biri o‘z karyerasini kam gonorar bilan boshlagan — bu faqat oziq-ovqat uchun yetarli edi yoki ba’zida butunlay tekinga suratga tushishgan. Quyida Gollivud yulduzlari ilk gonorariga nimalar xarid qilgani haqida bilib olasiz.",
        """
      Nikol Kidman
      Aktrisa eslashicha, ilk gonorari tushlik uchun yetarli bo‘lish bilan birga, ortganiga ota-onasiga kir yuvish mashinasi ham sotib olgan.

      Jennifer Lopes
      Xonanda qarindoshlariga yordam bermadi, balki o‘ziga Mersedes sotib oldi.

      Jonni Depp
      Qaroqchi Jek Chittak pulni o‘ziga emas, onasi uchun ot fermasi sotib olishga sarflagan.

      Selena Gomes
      Pop qo‘shiqchi asli texaslik, shuning uchun u daromadining katta qismini Los-Anjelesdagi uyga sarmoya qilgan.

      Bred Pitt
      Aktyor pulni isrof qilmaydi, balki kvartirasiga lampa va kreslo sotib oladi.

      Rami Malek
      Ko‘pchilik singari aktyor kofeinsiz yashay olmaydi, shuning uchun u birinchi gonorariga espresso mashinasini sotib olgan.

      Sindi Krouford
      Mashhur model birinchi gonorarini kvartirasi devorlariga gulqog‘oz olishga sarflagan.

      Bri Larson
      Aktrisa ko‘p yillar davomida orzu qilgan ko‘k rangli elektr gitara sotib oldi. Balki, u rok yulduzi bo‘lishni xohlagandir.

      """,
        "17:45",
        "21.08.2022",
        646,
      ),
    ];

    Widget createNews(
        String category,
        String imagePath,
        String imageSource,
        String title,
        String tldr,
        String description,
        String createdTime,
        String createdDate,
        int numberOfViews) {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            "/news/details",
            arguments: <String, String>{
              "category": category,
              "imagePath": imagePath,
              "imageSource": imageSource,
              "title": title,
              "tldr": tldr,
              "description": description,
              "createdTime": createdTime,
              "createdDate": createdDate,
              "numberOfViews": numberOfViews.toString(),
            },
          );
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    category,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1196c4),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "$createdDate | ",
                        style: const TextStyle(
                          color: Color(0xffa2a2a2),
                          fontSize: 14,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xff1196c4),
                          size: 22,
                        ),
                      ),
                      Text(
                        numberOfViews.toString(),
                        style: const TextStyle(
                          color: Color(0xff1196c4),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    int lengthOfNews = news.length;
    Widget newsListWidget = Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(18.0),
            decoration: const BoxDecoration(
              color: Color(0xfff3f3f3),
            ),
            child: ListView.builder(
              itemCount: lengthOfNews,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    createNews(
                        news[index].category,
                        news[index].imagePath,
                        news[index].imageSource,
                        news[index].title,
                        news[index].tldr,
                        news[index].description,
                        news[index].createdTime,
                        news[index].createdDate,
                        news[index].numberOfViews),
                    Divider(
                      height: 20,
                      thickness: 1,
                      color: const Color(0xff000000).withOpacity(0.15),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );

    return newsListWidget;
  }
}
