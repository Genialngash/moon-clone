import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moon_pay_clone/helper_functions/loadAssetImage.dart';
import 'package:moon_pay_clone/utils/responsive.dart';
import 'package:moon_pay_clone/utils/size_config.dart';

import '../helper_functions/loadSvgAsset.dart';
import 'top_drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  coinTypeContainer(
      {required String title, required String svgname, required Color color}) {
    return Container(
      width: 200,
      alignment: Alignment.center,
      padding: EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 250, 249, 252),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          loadSvgAsset(
            height: 30,
            width: 40,
            color: color,
            path: "assets/$svgname.svg",
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: DefaultTextStyle(
          style: GoogleFonts.actor(
            color: Colors.black,
            fontSize: getProportionalScreenWidth(8),
            fontWeight: FontWeight.w500,
          ),
          child: Column(
            children: [
              if (Responsive.isDesktop(context))
                const AppBarDestop()
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    loadSvgAsset(
                        height: getProportionalScreenHeight(25),
                        width: getProportionalScreenWidth(70),
                        path: "assets/moon_pay.svg"),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        hoverColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
              SizedBox(
                height: getProportionalScreenHeight(20),
              ),
              Container(
                height: SizeConfig.screenHeight * .8,
                // width: SizeConfig.screenWidth * .96,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        if (Responsive.isDesktop(context))
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: SizeConfig.screenHeight * .5,
                                  width: SizeConfig.screenWidth * .5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        height: getProportionalScreenHeight(60),
                                      ),
                                      const Text(
                                        "Crypto just",
                                        style: TextStyle(
                                            fontSize: 32, fontWeight: FontWeight.w600),
                                      ),
                                      const Text(
                                        "got easy",
                                        style: const TextStyle(
                                            fontSize: 32, fontWeight: FontWeight.w600),
                                      ),
                                      const Text(
                                          "A fast and simple way to buy and sell crypto"),
                                      SizedBox(
                                        height: getProportionalScreenHeight(40),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 150,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: const Color(0xff7D00FF),
                                            borderRadius: BorderRadius.circular(22)),
                                        child: const Text(
                                          "Buy crypto",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      const Text(
                                        "Trusted by 10M+ people",
                                        style: TextStyle(
                                            fontSize: 22, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: SizeConfig.screenHeight * .5,
                                  width: SizeConfig.screenWidth * .4,
                                  child: loadImage(
                                    height: SizeConfig.screenHeight * .5,
                                    width: SizeConfig.screenWidth * .5,
                                    imageUrl: "assets/homePageHero.png",
                                  ),
                                )
                              ],
                            ),
                          ),
                        if (Responsive.isMobile(context))
                          Column(
                            children: [
                              Container(
                                height: SizeConfig.screenHeight * .5,
                                width: SizeConfig.screenWidth * .5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: getProportionalScreenHeight(60),
                                    ),
                                    const Text(
                                      "Crypto just",
                                      style: TextStyle(
                                          fontSize: 30, fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      "got easy",
                                      style: const TextStyle(
                                          fontSize: 30, fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                        "A fast and simple way to buy and sell crypto"),
                                    SizedBox(
                                      height: getProportionalScreenHeight(40),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 150,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: const Color(0xff7D00FF),
                                          borderRadius: BorderRadius.circular(22)),
                                      child: const Text(
                                        "Buy crypto",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    const Text(
                                      "Trusted by 10M+ people",
                                      style: TextStyle(
                                          fontSize: 22, fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.screenHeight * .5,
                                width: SizeConfig.screenWidth * .4,
                                child: loadImage(
                                  height: SizeConfig.screenHeight * .5,
                                  width: SizeConfig.screenWidth * .5,
                                  imageUrl: "assets/homePageHero.png",
                                ),
                              ),
                            ],
                          ),
                        SizedBox(
                          height: getProportionalScreenHeight(40),
                        ),
                        Container(
                          // height: SizeConfig.screenHeight * .4,
                          // width: SizeConfig.screenWidth * .8,
                          padding:
                              const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                          decoration: BoxDecoration(
                            color: const Color(0xff7D00FF),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Get started",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: getProportionalScreenHeight(40),
                              ),
                              if (Responsive.isDesktop(context))
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        coinTypeContainer(
                                            title: "Buy Bitcoin",
                                            svgname: "btc-white",
                                            color: Colors.amber),
                                        coinTypeContainer(
                                            title: "Buy Ethereum",
                                            svgname: "symbol-eth",
                                            color: Colors.blueGrey),
                                        coinTypeContainer(
                                            title: "Buy Tether",
                                            svgname: "symbol-usdt",
                                            color: Colors.green)
                                      ],
                                    ),
                                    SizedBox(
                                      height: getProportionalScreenHeight(40),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        coinTypeContainer(
                                            title: "Buy Litecoin",
                                            svgname: "symbol-ltc",
                                            color: Colors.grey),
                                        coinTypeContainer(
                                            title: "Buy Binance coin",
                                            svgname: "symbol-bnb",
                                            color: Colors.amberAccent),
                                        coinTypeContainer(
                                            title: "Buy solana",
                                            svgname: "symbol-sol",
                                            color: Colors.purple)
                                      ],
                                    ),
                                  ],
                                )
                              else
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    coinTypeContainer(
                                        title: "Buy Bitcoin",
                                        svgname: "btc-white",
                                        color: Colors.amber),
                                    SizedBox(
                                      height: getProportionalScreenHeight(10),
                                    ),
                                    coinTypeContainer(
                                        title: "Buy Ethereum",
                                        svgname: "symbol-eth",
                                        color: Colors.blueGrey),
                                    SizedBox(
                                      height: getProportionalScreenHeight(10),
                                    ),
                                    coinTypeContainer(
                                        title: "Buy Tether",
                                        svgname: "symbol-usdt",
                                        color: Colors.green),
                                    SizedBox(
                                      height: getProportionalScreenHeight(10),
                                    ),
                                    coinTypeContainer(
                                        title: "Buy Litecoin",
                                        svgname: "symbol-ltc",
                                        color: Colors.grey),
                                    SizedBox(
                                      height: getProportionalScreenHeight(10),
                                    ),
                                    coinTypeContainer(
                                        title: "Buy Binance coin",
                                        svgname: "symbol-bnb",
                                        color: Colors.amberAccent),
                                    SizedBox(
                                      height: getProportionalScreenHeight(10),
                                    ),
                                    coinTypeContainer(
                                        title: "Buy solana",
                                        svgname: "symbol-sol",
                                        color: Colors.purple),
                                    SizedBox(
                                      height: getProportionalScreenHeight(10),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getProportionalScreenHeight(40),
                        ),
                        Container(
                          height: SizeConfig.screenHeight * .4,
                          color: Colors.black87,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: SizeConfig.screenWidth * .45,
                              ),
                              VerticalDivider(
                                color: Colors.white70,
                              ),
                              SizedBox(
                                width: SizeConfig.screenWidth * .4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Email.",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextFormField(
                                      
                                      decoration: InputDecoration(
                                        hoverColor: Colors.white,
                                        
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.white),
                                              borderRadius: BorderRadius.circular(30))),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarDestop extends StatefulWidget {
  const AppBarDestop({Key? key}) : super(key: key);

  @override
  State<AppBarDestop> createState() => _AppBarDestopState();
}

class _AppBarDestopState extends State<AppBarDestop> {
  getAppbarHoverWidget({required bool showBorder, required String text}) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: showBorder
                ? const Border(
                    bottom: BorderSide(color: Colors.black, width: 4),
                  )
                : null,
          ),
          child: InkWell(
            onTap: () {},
            onHover: (hovered) {
              setState(() {
                showBorder = hovered;
              });
            },
            child: Text(text),
          ),
        ),
      ),
    );
  }

  bool first = false;
  bool second = false;
  bool third = false;
  bool fourth = false;
  bool five = false;
  bool six = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: GoogleFonts.actor(
          color: Colors.black,
          fontSize: getProportionalScreenWidth(8),
          fontWeight: FontWeight.w500,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  loadSvgAsset(
                      height: getProportionalScreenHeight(25),
                      width: getProportionalScreenWidth(70),
                      path: "assets/moon_pay.svg"),
                  getAppbarHoverWidget(showBorder: first, text: "Buy crypto"),
                  getAppbarHoverWidget(showBorder: second, text: "Business"),
                  getAppbarHoverWidget(showBorder: third, text: "About us"),
                  getAppbarHoverWidget(showBorder: fourth, text: "Careers"),
                  getAppbarHoverWidget(showBorder: five, text: "Blog"),
                  getAppbarHoverWidget(showBorder: six, text: "Help Center")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => TopDrawer(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, -4.0);
      const end = Offset.zero;
      const curve = Curves.decelerate;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: tween.animate(animation),
        child: child,
      );
    },
    opaque: false,
    barrierDismissible: true,
    barrierColor: const Color.fromRGBO(100, 100, 100, 0.5), //color of the grayed under
    transitionDuration: const Duration(milliseconds: 450),
    reverseTransitionDuration: const Duration(milliseconds: 450),
  );
}
