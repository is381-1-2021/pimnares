import 'package:Cat_what/helpers/utils.dart';
import 'package:Cat_what/models/content.dart';
import 'package:Cat_what/pages/selectcontentpage.dart';
import 'package:Cat_what/widgets/contentbottombar.dart';
import 'package:flutter/material.dart';

import '../widgets/contentcard.dart';

class ContentPage extends StatelessWidget {
  List<Content> contents = Utils.getMockedContents();

  get selectedContent => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Icon(
            Icons.pets_rounded,
            color: Colors.deepOrange[200],
            size: 40,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.deepOrange[200]),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.add),
            )
          ],
        ),
        body: Container(
            child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Content',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 100),
                    itemCount: contents.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return ContentCard(
                          content: contents[index],
                          onCardClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SelectedContentPage(//selectedContent: selectedContent.header,
                                  ),
                                ));
                          });
                    },
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ContentBottomBar(),
            )
          ],
        )));
  }
}
