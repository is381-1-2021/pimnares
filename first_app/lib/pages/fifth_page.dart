import 'package:flutter/material.dart';

class FiftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(8, (index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/${index + 1}');
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20.0)),
              margin: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  'Item ${index + 1}',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
