// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({ Key? key }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: homePage(),
//     );
//   }
// }

// class homePage extends StatefulWidget {
//   const homePage({ Key? key }) : super(key: key);
//   @override
//   _homePageState createState() => _homePageState();
// }

// class _homePageState extends State<homePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepOrange[200],
//       appBar: AppBar(
//         title: const Text('Hello,', style: TextStyle(
//             color: Colors.white,
//             fontSize: 30,
//             fontFamily: 'FCPalette',
//             fontWeight: FontWeight.w700
//           ),),
//         centerTitle: false,
//         titleSpacing: 50,
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 7,),
//           Expanded(
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               padding: const EdgeInsets.all(20),
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(topLeft: Radius.circular(70),
//                 topRight: Radius.circular(70)),
//                 color: Colors.white
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     SizedBox(height: 5,),
//                     Text('   Find your favourite cat\n   to adopt', style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500,
//                       fontFamily: 'FCPalette'),
//                     ),
//                   ],
//                 ),
//           ),
//          )
//         ],
//       ),
//     );
//   }
// }

import 'package:cat_what/controllers/ploy_controller.dart';
import 'package:cat_what/services/ploy_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cat_what/models/ploy_model.dart';
import 'package:flutter/material.dart';

class CatPage extends StatefulWidget {
  @override
  _CatPageState createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  List<Cat> cats = List.empty();
  bool isLoading = false;
  var services = FirebaseServices();
  var controller;

  void initState() {
    super.initState();
    controller = CatController(services);

    controller.onSync.listen(
      (bool synState) => setState(() => isLoading = synState),
    );
  }

  void _getCats() async {
    var newCats = await controller.fetchCats();
    print(newCats);

    setState(() => cats = newCats);
  }

  Widget get body => isLoading
      ? CircularProgressIndicator()
      : ListView.builder(
          itemCount: cats.isEmpty ? 1 : cats.length,
          itemBuilder: (ctx, index) {
            if (cats.isEmpty) {
              return Text(
                "",
              );
            }

            return Center(
                //value: cats[index].found,
                //title: Text(cats[index].name),
                //subtitle: Text(cats[index].breed),
                //child: Image.network('https://firebasestorage.googleapis.com/v0/b/is381-2021-catwhat.appspot.com/o/cat1.jpg?alt=media&token=da1fa660-05e7-4921-81c1-e57f48238602'),
                //leading: CircleAvatar ,
                // onChanged: null
                child: SizedBox(
              width: 400,
              height: 200,
              child: Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Name :' + ' ' + cats[index].name,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Breed :' + ' ' + cats[index].breed,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Color :' + ' ' + cats[index].color,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Gender :' + ' ' + cats[index].gender,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lost location :' + ' ' + cats[index].lostLocation,
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                    //Image.network('gs://is381-2021-catwhat.appspot.com/cat1.jpg')
                  ],
                ),
              ),
            ));
          },
        );
  //   return ListView.builder(itemBuilder: (context, index) {
  //     return ListTile(
  //       title: Text(cats[index].name),
  //     );
  //   });
  // });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      appBar: AppBar(
        title: const Text(
          'Hello,',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'FCPalette',
              fontWeight: FontWeight.w700),
        ),
        centerTitle: false,
        titleSpacing: 50,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: body,
      
      // Column(
      //   children: [
      //     const SizedBox(
      //       height: 7,
      //     ),
      //     Expanded(
      //       child: Container(
      //         width: MediaQuery.of(context).size.width,
      //         padding: const EdgeInsets.all(20),
      //         decoration: const BoxDecoration(
      //             borderRadius: BorderRadius.only(
      //                 topLeft: Radius.circular(70),
      //                 topRight: Radius.circular(70)),
      //             color: Colors.white),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: const [
      //             SizedBox(
      //               height: 5,
      //             ),
      //             Text(
      //               '   Find your favourite cat\n   to adopt',
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.w500,
      //                   fontFamily: 'FCPalette'),
      //             ),
      //           ],
      //         ),
      //       ),
      //     )
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange[200],
        onPressed: _getCats,
        child: Icon(Icons.home_filled
        ),
      ),
    );
  }
}
//       body: Center(
//         child: body,
//       ),
// floatingActionButton: FloatingActionButton(
//   backgroundColor: Colors.deepOrange[200],
//   onPressed: _getCats,
//   child: Icon(Icons.add),
// ),
// );
//   }
// }
