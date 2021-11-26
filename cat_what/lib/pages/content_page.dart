import 'package:cat_what/controllers/content_controller.dart';
import 'package:cat_what/models/content_model.dart';
import 'package:cat_what/pages/content_detail.dart';
import 'package:cat_what/pages/new_content.dart';
import 'package:cat_what/services/content_service.dart';
import 'package:cat_what/widgets/contentbottombar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({ Key? key }) : super(key: key);
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  List<Content> contents = List.empty();
  bool isLoading = false;
  var services = FirebaseServices();
  var controller;

  void initState() {
    super.initState();
    controller = ContentController(services);

    controller.onSync.listen(
      (bool synState) => setState(() => isLoading = synState),
    );
  }

  void _getContents() async {
    var newContents = await controller.fetchContents();
    print(newContents);

    setState(() => contents = newContents);
  }

  Widget get body => isLoading
      ? CircularProgressIndicator()
      : ListView.builder(
          itemCount: contents.isEmpty ? 1 : contents.length,
          itemBuilder: (ctx, index) {
            if (contents.isEmpty) {
              return Center(
                child: Text(
                  "Content is empty, try to create 1 !?",
                  style: TextStyle(color: Colors.white,
                  fontSize: 20),
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              
              
                child: Center(
                  child: Card(
                    margin: EdgeInsets.all(5),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: ListTile(
                      title: Text(contents[index].header),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ContentDetailsPage(),
                            )
                            );

                      //  Navigator.pushNamed(context, '/details', arguments: contents);

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ContentDetailsPage(contents: contents)));
                      },
                    ),
                  ),
                ),
            );
          });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: const Text(
              'Content',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'FCPalette',
                  fontWeight: FontWeight.w700),
            ),
          ),
          centerTitle: false,
          titleSpacing: 30,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewContent()));
                  },
                  icon: Icon(Icons.add)),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: body,
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange[200],
        onPressed: _getContents,
        child: Icon(Icons.refresh_rounded),
      ),
      bottomNavigationBar: ContentBottomBar(),
    );
  }
}
