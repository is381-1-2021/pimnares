import 'package:cat_what/Archive/sawanya/screens/groom_main.dart';
import 'package:cat_what/OLD/form.dart';
import 'package:cat_what/pages/setting.dart';
import 'package:cat_what/pages/content_page.dart';
import 'package:cat_what/pages/mdisplay.dart';
import 'package:cat_what/pages/moss3.dart';
import 'package:flutter/material.dart';

class ContentBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.deepOrange[100], boxShadow: [
        BoxShadow(
            blurRadius: 20,
            color: Colors.white.withOpacity(0.2),
            offset: Offset.zero)
      ]),
      height: 100,
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.deepOrange[200],
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContentPage(),));
                },
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.deepOrange[200],
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DisplayScreen(),));
                },
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.deepOrange[200],
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GroomMain(),));
                },
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.deepOrange[200],
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LogoutScreen(),));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
