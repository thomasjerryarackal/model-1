import 'package:avaride2/Data/MakersData.dart';
import 'package:avaride2/utilities/contants.dart';
import 'package:flutter/material.dart';
//this is the layout of the Makers card
class MakersCard extends StatelessWidget {
  final MakersData makersData;// variable of datatype-MakersData
  final VoidCallback taps;
  const MakersCard({
    Key? key,
    required this.makersData,
    required this.taps,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: taps,
      //this container is the outter most one which contain all the other parts
      child: Container(
        margin: EdgeInsets.only(right: 5,),
        width: 120,
        height: 100,
        decoration: BoxDecoration(
          color: backColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 100.0,
                height: 100.0,
                decoration: new BoxDecoration(
                    border: Border.all(color: const Color(0xFF28324E)),
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(makersData.image),
                    )
                )),
            SizedBox(
              height: 2,
            ),
            Container(
              decoration: BoxDecoration(
              ),
              child: Text(makersData.name, style: TextStyle(
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
