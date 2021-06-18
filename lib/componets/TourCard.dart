import 'package:flutter/material.dart';

class TourCard extends StatelessWidget {
  const TourCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: onTap,
      child: Container(
        width: 200,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.brown
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('hi', style: TextStyle(
                      fontSize: 10,
                      color: Colors.purple
                  ),),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.purple,
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Text('upo', style: TextStyle(
                  fontSize: 10
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
