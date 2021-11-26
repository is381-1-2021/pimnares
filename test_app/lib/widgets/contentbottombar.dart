import 'package:flutter/material.dart';

class ContentBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange[100],
                boxShadow: [
                  BoxShadow(blurRadius: 20,
                  color: Colors.white.withOpacity(0.2),
                  offset: Offset.zero
                  )
                ]
              ),
              height: 100,
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipOval(
                    child: Material(
                      child: IconButton(
                        icon: Icon(Icons.favorite, color: Colors.deepOrange[200],),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Material(
                      child: IconButton(
                        icon: Icon(Icons.home, color: Colors.deepOrange[200],),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Material(
                      child: IconButton(
                        icon: Icon(Icons.person, color: Colors.deepOrange[200],),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Material(
                      child: IconButton(
                        icon: Icon(Icons.local_hospital_rounded, color: Colors.deepOrange[200],),
                        onPressed: (){},
                      ),
                    ),
                  ),
                ],
              ),
            );
  }
  
}