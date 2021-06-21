import 'package:avaride2/Data/TourData.dart';
import 'package:avaride2/utilities/contants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//this is the layout of the tour card
class TourCard extends StatelessWidget {
  final TourData tourData;// variable of datatype-TourData
  final VoidCallback taps;
  const TourCard({
    Key? key,
    required this.tourData,
    required this.taps,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: taps,
      //this container is the outter most one which contain all the other parts
      child: Container(
        margin: EdgeInsets.only(right: 10),
        width: 250,
        height: 100,
        decoration: BoxDecoration(
            color: backColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                //big-1
                Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.brown
                  ),
                  child: Image(
                    //for now just adding image
                    image: AssetImage(tourData.imageA),
                    fit: BoxFit.cover,
                  ),
                ),

                Column(
                  children: [
                    //box-2
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.brown
                      ),
                      child: Image(
                        //for now just adding image
                        image: AssetImage(tourData.imageB),
                        fit: BoxFit.cover,
                      ),
                    ),
                    //box-3
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.brown
                      ),
                      child: Image(
                        //for now just adding image
                        image: AssetImage(tourData.imageC),
                        fit: BoxFit.cover,
                      ),
                    ),

                  ],
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                  color: Colors.pink
              ),
              child: Text(tourData.title, style: TextStyle(
                  fontSize: 15
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tourData.placeName,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.purple
                    ),
                    ),
                    Row(
                      children: [
                        Text(tourData.time,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.purple
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("${tourData.activities}",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.purple
                          ),
                        )

                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 2,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.red, width: 2),
                  ),
                  onPressed: () {},
                  child:  Text(tourData.price),
                 )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
