import 'dart:html';
import 'dart:ui';

import 'package:animated_widgets/generated/i18n.dart';
import 'package:flutter/material.dart';
import 'package:moon_pay_clone/helper_functions/loadSvgAsset.dart';
import 'package:moon_pay_clone/utils/size_config.dart';

class TopDrawer extends StatelessWidget {
  TopDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .8,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 27),
            child: SingleChildScrollView(
              child: DefaultTextStyle(
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: getProportionalScreenWidth(15),
                    fontWeight: FontWeight.w500),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          loadSvgAsset(
                              height: getProportionalScreenHeight(25),
                              width: getProportionalScreenWidth(70),
                              path: "assets/moon_pay.svg"),
                          IconButton(
                              hoverColor: Colors.grey,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(Icons.close)),
                        ],
                      ),
                      SizedBox(
                        height: getProportionalScreenHeight(30),
                      ),
                      Text(
                        "Buy crypto",
                      ),
                      SizedBox(
                        height: getProportionalScreenHeight(30),
                      ),
                      Text(
                        "Business",
                      ),
                      SizedBox(
                        height: getProportionalScreenHeight(30),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Text(
                        "About us",
                      ),
                      SizedBox(
                        height: getProportionalScreenHeight(30),
                      ),
                      Text(
                        "Careers",
                      ), SizedBox(
                        height: getProportionalScreenHeight(30),
                      ),
                      Text(
                        "Blog",
                      ),
                      SizedBox(
                        height: getProportionalScreenHeight(30),
                      ),
                      Text(
                        "Help Center",
                      ),
                      SizedBox(
                        height: getProportionalScreenHeight(30),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
