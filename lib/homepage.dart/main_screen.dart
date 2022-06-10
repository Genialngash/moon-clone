import 'dart:html';

import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
     
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: Column(
          children: [
            if (Responsive.isDesktop(context))
              AppBar()
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  loadSvgAsset(path: "assets/moon_pay.svg"),

                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                          Navigator.of(context).push(_createRoute());
                      },
                      hoverColor: Colors.grey,
                    ),
                  ),
                ],
              ),
          ],
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
      barrierColor: Color.fromRGBO(100, 100, 100, 0.5), //color of the grayed under
      transitionDuration: Duration(milliseconds: 450),
      reverseTransitionDuration: Duration(milliseconds: 450),
    );
  }

