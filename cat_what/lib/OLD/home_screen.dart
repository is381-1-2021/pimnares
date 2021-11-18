import 'package:cat_what/OLD/groomingResult.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';
import 'review.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: TopPart(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          icon: Icon(Icons.shower, color: Colors.teal[200]),
          tooltip: 'What Cat Menu',
          onPressed: () {}),
    );
  }
}

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cat Grooming'),
          actions: [
            IconButton(
              icon: Icon(Icons.mail_outline),
              tooltip: 'Button1',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GroomingFormResult(),
                  ),
                );
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'About Us',
              ),
              Tab(
                text: 'Reviews',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: AboutUs(),
            ),
            Center(
              child: ReviewReview(),
            ),
          ],
        ),
      ),
    );
  }
}
