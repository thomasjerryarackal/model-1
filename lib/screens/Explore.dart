//this will be page for explore screen
// this page  number will be according to screen number and relates pages also
//screen-1
import 'package:avaride2/Data/FObjectsData.dart';
import 'package:avaride2/Data/MakersData.dart';
import 'package:avaride2/Data/StateData.dart';
import 'package:avaride2/Data/TourData.dart';
import 'package:avaride2/componets/FObjectsCard.dart';
import 'package:avaride2/componets/Featuredbox.dart';
import 'package:avaride2/componets/MakersCard.dart';
import 'package:avaride2/componets/StateCard.dart';
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
                          MaterialPageRoute(builder: (context) => Details(
                            name: "Victoria Memorial Kolkata",
                          )),
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
                      padding: const EdgeInsets.all(8.0),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Details(
                                  name:" tours",
                                )),
                              );
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
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 200,
                      // this is function that make scroll list
                      child: ListView.builder(
                        itemCount: tours.length ,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,int index)=>TourCard(
                          tourData: tours[index],
                          taps: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Details(
                                name:" tours",
                              )),
                            );
                          },
                        )

                      ),
                    ),
                    SizedBox(height: 20,),
                    //Feature objects
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Featured', style: TextStyle(
                            fontSize: 20,
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Details(
                                  name:" f objects",
                                )),
                              );
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
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 200,
                      // this is function that make scroll list
                      child: ListView.builder(
                          itemCount: objects.length ,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,int index)=>FObjectsCard(
                              fObjectsData: objects[index],
                              taps:(){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Details(
                                    name:" f objects",
                                  )),
                                );
                              }
                          )

                      ),
                    ),
                    SizedBox(height: 20,),
                    //Artists
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Historical Personalities', style: TextStyle(
                            fontSize: 20,
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Details(
                                  name:"Historians",
                                )),
                              );
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
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 180,
                      // this is function that make scroll list
                      child: ListView.builder(
                          itemCount: make.length ,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,int index)=>MakersCard(
                              makersData: make[index],
                              taps:(){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Details(
                                    name:"Historians",
                                  )),
                                );
                              }
                          )

                      ),
                    ),
                    SizedBox(height: 20,),
                    //States
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('States', style: TextStyle(
                            fontSize: 20,
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          ),),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Details(
                                  name: "States",
                                )),
                              );
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
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 200,
                      // this is function that make scroll list
                      child: ListView.builder(
                          itemCount: states.length ,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,int index)=>StateCard(
                              stateData: states[index],
                              taps:(){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Details(
                                    name: "State",
                                  )),
                                );
                              }
                          )

                      ),
                    ),
                    SizedBox(height: 20,),





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
