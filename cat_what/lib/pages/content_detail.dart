import 'package:cat_what/controllers/content_controller.dart';
import 'package:cat_what/models/content_model.dart';
import 'package:cat_what/services/content_service.dart';
import 'package:cat_what/widgets/contentbottombar.dart';
import 'package:flutter/material.dart';

class ContentDetailsPage extends StatefulWidget {
  @override
  _ContentDetailsPageState createState() => _ContentDetailsPageState();
}

class _ContentDetailsPageState extends State<ContentDetailsPage> {
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
              return Text(
                "",
              );
            }
            return Column(
              children: [
                SizedBox(
                  width: 400,
                  height: 200,
                  child: Card(
                    elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            contents[index].header,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            contents[index].detail,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      appBar: AppBar(
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
      ),
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
