import 'package:avaride2/Data/FObjectsData.dart';
import 'package:avaride2/utilities/contants.dart';
import 'package:flutter/material.dart';
//this is the layout of the FObjects card
class FObjectsCard extends StatelessWidget {
  final FObjectsData fObjectsData;// variable of datatype-TourData
  final VoidCallback taps;
  const FObjectsCard({
    Key? key,
    required this.fObjectsData,
    required this.taps,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: taps,
      //this container is the outter most one which contain all the other parts
      child: Container(
        margin: EdgeInsets.only(right: 5,),
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          color: backColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150,
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.brown
              ),
              child: Image(
                //for now just adding image
                image: AssetImage(fObjectsData.image1),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(

              decoration: BoxDecoration(
              ),
              child: Text(fObjectsData.title, style: TextStyle(
                  fontSize: 15,
                color: kTextColor,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}