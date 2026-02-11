import 'package:bank/pages/utama1.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  late PageController controller;
  late Timer timer;

  final List<String> images = [
    "assets/homepage/koja_asih.png",
    "assets/homepage/image.png",
  ];
  @override
  void initState() {
    super.initState();

    controller = PageController();

    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentIndex < images.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }

      controller.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Selamat Pagi, BSU Koja Asih!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Puppins',
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Selamat Datang Kembali",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Puppins',
                                fontSize: size.width * 0.03,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          'assets/homepage/setting.png', // ganti sesuai icon kamu
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.02),
                    width: double.infinity,
                    height: 200,
                    child: PageView.builder(
                      controller: controller, // PENTING
                      itemCount: images.length,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(images[index], fit: BoxFit.cover),
                        );
                      },
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.02),
                    child: Text(
                      "Menu Kami!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Puppins',
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.02),
                      width: double.infinity,
                      height: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/homepage/map.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.0),
                              child: Text(
                                "Lokasi Lapak",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.0),
                              child: Text(
                                "Silahkan Cek Lokasi Lapak Kerjasama Anda",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.02),
                      width: double.infinity,
                      height: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/homepage/bsip.png"),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.0),
                              child: Text(
                                "BSU Info",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.0),
                              child: Text(
                                "Silahkan Cek Informasi Terbaru BSU",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.02),
                      width: double.infinity,
                      height: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/homepage/timbangan.png",
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.0),
                              child: Text(
                                "Laporan Penimbangan",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.0),
                              child: Text(
                                "Silahkan Cek Lokasi Lapak Kerjasama Anda",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.02),
                      width: double.infinity,
                      height: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/homepage/penimbangan.png",
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.0),
                              child: Text(
                                "Penimbangan",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.0),
                              child: Text(
                                "Silahkan Cek penimbangan anda",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Puppins',
                                  fontSize: size.width * 0.03,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Container(
          margin: EdgeInsets.only(top: size.height * 0.02),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Utama1()),
              );
            },
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF23524E), Color(0xFF4FB8AF)],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/homepage/user.png"),
                  Image.asset("assets/homepage/back.png"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    controller.dispose();
    super.dispose();
  }
}
