//this will be page for explore screen
// this page  number will be according to screen number and relates pages also
//screen-1
import 'package:avaride2/componets/Featuredbox.dart';
import 'package:avaride2/componets/TourCard.dart';
import 'package:avaride2/componets/locationalter.dart';
import 'package:avaride2/componets/search.dart';
import 'package:avaride2/screens/details.dart';
import 'package:avaride2/utilities/contants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Container(
        padding: EdgeInsets.all(9),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // this part-1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Explore",
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Charmonman',
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        //code is in folder components
                        Search()
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //part 2-featured
                    Featured(
                      name: "Victoria Memorial Kolkata",
                      taps: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Details()),
                        );
                      },
                    ),
                    SizedBox(
                       height: 15,
                    ),
                    //if location of the user is not activated
                    Locational(),
                    SizedBox(
                      height: 15,
                    ),
                    //tour
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tour', style: TextStyle(
                            fontSize: 20,
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),),
                          GestureDetector(
                            onTap: (){
                              //Navigator.pushNamed(context, '/Brands');
                            },
                            child: Text(
                              'See more',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.0,
                                color: kTextColorD,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 9,),
                    Container(
                      height: 200,
                      color: kTryColor,
                      width: 350,
                      child: TourCard(),
                    ),
                    SizedBox(height: 9,),
                    Container(
                      height: 200,
                      color: kTryColor,
                      width: 350,
                      child: TourCard(),
                    ),
                    SizedBox(height: 9,),




                  ],
                ),
              ),
            ),
          ],
        ),

      )
    );
  }
}
