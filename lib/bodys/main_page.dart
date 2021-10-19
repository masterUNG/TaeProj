import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taeproj/utility/my_constant.dart';
import 'package:taeproj/widgets/show_circular.dart';
import 'package:taeproj/widgets/show_title.dart';
import 'package:taeproj/widgets/show_title_head.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> banners = [
    'images/topgraphic.png',
    'images/topgraphic.png',
    'images/topgraphic.png',
  ];
  List<Widget> widgets = [];

  List<String> pathImageAritcles = [
    'images/t1.jpg',
    'images/t2.jpg',
    'images/t1.jpg',
    'images/t2.jpg',
  ];
  List<String> titleAritcles = [
    'Lorem Ipsum คือ Ipsum เนื้อหาจำลองแบบเรียบๆ 1111',
    'Lorem Ipsum คือ เนื้อหาจำลอง 2222',
    'Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ 3333',
    'Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ 4444',
  ];
  List<String> detailAritcles = [
    'Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16',
    'Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16',
    'Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16',
    'Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16',
  ];
  List<String> dateAritcles = [
    '16-6-2564',
    '17-6-2564',
    '17-6-2564',
    '19-6-2564',
  ];
  List<String> viewAritcles = [
    'ผู้เข้าชม 123K',
    'ผู้เข้าชม 124K',
    'ผู้เข้าชม 125K',
    'ผู้เข้าชม 126K',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loopCreateBanner();
  }

  void loopCreateBanner() {
    for (var item in banners) {
      setState(() {
        widgets.add(createBannerWidget(item));
      });
    }
  }

  Widget createBannerWidget(String path) => Image.asset(path);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildHead(),
            buildBanner(),
            buildContent(),
            const ShowTitleHead(
                title: 'บทความ', pathIcon: 'images/article.png'),
            listArticle(),
            const ShowTitleHead(
                title: 'โปรโมชั่นร้านค้า', pathIcon: 'images/shop.png'),
            buildBanner(),
            const ShowTitleHead(
                title: 'มูลนิธิถันยรักษ', pathIcon: 'images/shop.png'),
            buildAboutMe(),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }

  Padding buildAboutMe() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: MyConstant.myBlue2,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 140,
                          height: 140,
                          child: Image.asset('images/tt.png'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShowTitle(
                        title: 'เกี่ยวกับเรา',
                        textStyle: MyConstant().h3StyleWeight(),
                      ),
                      ShowTitle(
                        title: 'ประวัติความเป็นมา',
                        textStyle: MyConstant().h3StyleWeight(),
                      ),
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {},
                          child: ShowTitle(
                            title: 'ดูทั้งหมด',
                            textStyle: MyConstant().h2StyleBlue(),
                          ))
                    ],
                  ))
                ],
              ),
            ),
          );
  }

  SizedBox listArticle() {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: pathImageAritcles.length,
        itemBuilder: (context, index) => Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      pathImageAritcles[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 300,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ShowTitle(
                    title: titleAritcles[index],
                    textStyle: MyConstant().h2StyleBlue(),
                  ),
                ),
              ),
              Container(
                width: 300,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ShowTitle(
                    title: cutWord(detailAritcles[index]),
                    textStyle: MyConstant().h4StyleBlack(),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 4, 4, 4),
                      child: SvgPicture.asset('images/c1.svg'),
                    ),
                    ShowTitle(
                      title: dateAritcles[index],
                      textStyle: MyConstant().h4StyleGley(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 4, 4),
                      child: SvgPicture.asset('images/v2.svg'),
                    ),
                    ShowTitle(
                      title: viewAritcles[index],
                      textStyle: MyConstant().h4StyleGley(),
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

  Container buildContent() {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/main_body.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          const ShowTitleHead(
              title: 'การนัดหมาย', pathIcon: 'images/calendar.png'),
          buildNonAppointCard(),
          groupIcon(),
        ],
      ),
    );
  }

  Padding groupIcon() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          requireResult(),
          addAppointMent(),
          myNotification(),
        ],
      ),
    );
  }

  Column requireResult() {
    return Column(
      children: [
        Image.asset('images/list.png'),
        const SizedBox(
          height: 4,
        ),
        ShowTitle(
          title: 'ขอผลตรวจ',
          textStyle: MyConstant().h4StyleBlack(),
        ),
      ],
    );
  }

  Column addAppointMent() {
    return Column(
      children: [
        Image.asset('images/calenda.png'),
        const SizedBox(
          height: 4,
        ),
        ShowTitle(
          title: 'เพิ่มการนัดหมาย',
          textStyle: MyConstant().h4StyleBlack(),
        ),
      ],
    );
  }

  Column myNotification() {
    return Column(
      children: [
        Image.asset('images/noti.png'),
        const SizedBox(
          height: 4,
        ),
        ShowTitle(
          title: 'การแจ้งเตือน',
          textStyle: MyConstant().h4StyleBlack(),
        ),
      ],
    );
  }

  Padding buildNonAppointCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    width: 16,
                    child: Image.asset('images/box_calenda.png'),
                  ),
                ),
              ),
              title: ShowTitle(
                title: 'ยังไม่มีการนัดหมาย',
                textStyle: MyConstant().h3StyleWeight(),
              ),
              subtitle: ShowTitle(
                title: 'เข้าสู่ระบบ เพื่อทำการนัดหมาย',
                textStyle: MyConstant().h4StyleGley(),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
                          Icons.navigate_next,
                          color: Colors.blue,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: ShowTitle(
                      title: 'เข้าสู่ระบบ',
                      textStyle: MyConstant().h3StyleWhite(),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  CarouselSlider buildBanner() {
    return CarouselSlider(
      items: widgets,
      options: CarouselOptions(
        enableInfiniteScroll: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        viewportFraction: 0.92,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 10),
      ),
    );
  }

  Container buildHead() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/header.png'), fit: BoxFit.cover),
      ),
      height: 135,
      child: ListTile(
        leading: const ShowCircular(path: 'images/iconmaster.png'),
        title: ShowTitle(
          title: 'สวัสดี',
          textStyle: MyConstant().h2StyleWhite(),
        ),
        subtitle: ShowTitle(
          title: 'กรุณาเข้าสู่ระบบ',
          textStyle: MyConstant().h3StyleWhite(),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bus_alert,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String cutWord(String detailAritcl) {
    String result = detailAritcl;
    if (result.length >= 200) {
      result = result.substring(0, 100);
      result = '$result ...';
    }
    return result;
  }
}
