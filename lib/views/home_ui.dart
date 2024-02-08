// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _tabController =
        TabController(length: 7, vsync: this, initialIndex: _currentTabIndex);
    super.initState();
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.pink,
          title: Text(
            'DTI Cake Shop',
            style: GoogleFonts.kanit(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                exit(0); //ปิด-ออกจากแอป
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.grey[400],
            indicatorColor: Colors.yellow,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(
                  icon: Icon(
                    Icons.shop,
                  ),
                  text: 'เค้กบ้านสวน'),
              Tab(
                  icon: Icon(
                    Icons.shop,
                  ),
                  text: 'Smile Bakery'),
              Tab(
                  icon: Icon(
                    Icons.shop,
                  ),
                  text: 'เค้กมะพร้าวบ้านยาย'),
              Tab(
                  icon: Icon(
                    Icons.shop,
                  ),
                  text: 'บ้านเค้ก'),
              Tab(
                  icon: Icon(
                    Icons.shop,
                  ),
                  text: 'ครัวขนมอบ'),
              Tab(
                  icon: Icon(
                    Icons.shop,
                  ),
                  text: 'กินปัง'),
              Tab(
                  icon: Icon(
                    Icons.shop,
                  ),
                  text: 'TeaPun'),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'SAU Cake Shop',
                  style: GoogleFonts.kanit(),
                ),
                accountEmail: Text(
                  'แอปสำหรับคนชอบกินเค้ก',
                  style: GoogleFonts.kanit(),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg_welcome.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/03/06/03/25/red-velvet-cake-4905933_1280.jpg'),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/03/06/03/25/red-velvet-cake-4905933_1280.jpg'),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/03/06/03/25/red-velvet-cake-4905933_1280.jpg'),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _tabController.index = 0;
                  });
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'เค้กบ้านสวน',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _tabController.index = 1;
                  });
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck02.png',
                  ),
                ),
                title: Text(
                  'Smile Bakery',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _tabController.index = 2;
                  });
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck03.png',
                  ),
                ),
                title: Text(
                  'เค้กมะพร้าวบ้านยาย',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _tabController.index = 3;
                  });
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck04.png',
                  ),
                ),
                title: Text(
                  'บ้านเค้ก',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _tabController.index = 4;
                  });
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck04.png',
                  ),
                ),
                title: Text(
                  'ครัวขนมอบ',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _tabController.index = 5;
                  });
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck06.png',
                  ),
                ),
                title: Text(
                  'กินปัง',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _tabController.index = 6;
                  });
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck07.png',
                  ),
                ),
                title: Text(
                  'TeaPun',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  exit(0);
                },
                leading: Icon(Icons.exit_to_app),
                title: Text(
                  'ออกจากการใช้งาน',
                  style: GoogleFonts.kanit(),
                ),
              ),
              Divider(),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            showShopWidget(
              'AAAA',
              'assets/images/ck01.png',
              '028881111',
              'http://www.a.com',
              '13.7068604,100.356138',
            ),
            showShopWidget(
              'BBBB',
              'assets/images/ck02.png',
              '028881111',
              'http://www.a.com',
              '13.7068604,100.356138',
            ),
            showShopWidget(
              'CCCC',
              'assets/images/ck02.png',
              '028881111',
              'http://www.a.com',
              '13.7068604,100.356138',
            ),
            showShopWidget(
              'DDDD',
              'assets/images/ck02.png',
              '028881111',
              'http://www.a.com',
              '13.7068604,100.356138',
            ),
            showShopWidget(
              'EEEE',
              'assets/images/ck02.png',
              '028881111',
              'http://www.a.com',
              '13.7068604,100.356138',
            ),
            showShopWidget(
              'FFFF',
              'assets/images/ck02.png',
              '028881111',
              'http://www.a.com',
              '13.7068604,100.356138',
            ),
            showShopWidget(
              'GGGG',
              'assets/images/ck02.png',
              '028881111',
              'http://www.a.com',
              '13.7068604,100.356138',
            ),
            // Image.asset(
            //   'assets/images/ck02.png'
            // ),
            // Image.asset('assets/images/ck03.png'),
            // Image.asset('assets/images/ck04.png'),
            // Image.asset('assets/images/ck05.png'),
            // Image.asset('assets/images/ck06.png'),
            // Image.asset('assets/images/ck07.png'),
          ],
        ),
      ),
    );
  }

  //method แสดงหน้าข้อมูลร้าน
  Widget showShopWidget(String shopName, String shopImg, String shopPhone,
      String shopWeb, String shopGPS) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Text(
            shopName,
            style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Image.asset(
            shopImg,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            child: ListTile(
              onTap: () {
                _makePhoneCall(shopPhone);
              },
              leading: Icon(
                Icons.phone,
              ),
              title: Text(shopPhone),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(Uri.parse(shopWeb));
              },
              leading: Icon(
                Icons.web,
              ),
              title: Text(shopWeb),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse(
                      'https://www.google.co.th/maps/@' + shopGPS + ',18.21z'),
                      
                );
              },
              leading: Icon(
                FontAwesomeIcons.mapLocation,
                color: Colors.white,
              ),
              title: Text('นำทางไปร้าน'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
