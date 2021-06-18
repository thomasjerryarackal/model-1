import 'package:avaride2/utilities/contants.dart';
import 'package:flutter/material.dart';

class Featured extends StatelessWidget {
  Featured({required this.name , required this.taps});
  final String name;
  //this is the new datatype-VoidCallBack for function datatype in the new version of android studio
  final VoidCallback taps;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: taps,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white70,
                    )
                  ]
                ),
                child: Image(
                  //for now just adding image
                  image: AssetImage("assets/pic/VMK.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Featured",
                      style: TextStyle(
                        color:kTagText,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('$name',
                      style: TextStyle(
                        color:kTextColor,
                        fontSize: 20,
                      ),
                    ),
                  ],

                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
