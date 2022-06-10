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
    
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.3,
          width: MediaQuery.of(context).size.width,
          color: Colors.green,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SingleChildScrollView(
            child: DefaultTextStyle(
              style: TextStyle(
        color: Colors.black87,
        fontSize: getProportionalScreenWidth(24),
        fontWeight: FontWeight.w500),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Row(
                  children: [
                    loadSvgAsset(path: "assets/moon_pay.svg"),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.close)),
                  ],
                ),
                Text(
                  "Buy crypto",
                ),
                Text(
                  "Business",
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  "About us",
                ),
                Text(
                  "Careers",
                ),
                Text(
                  "Blog",
                ),
                Text(
                  "Help Center",
                )
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
