import 'package:avaride2/Data/StateData.dart';
import 'package:avaride2/utilities/contants.dart';
import 'package:flutter/material.dart';
//this is the layout of the State card

class StateCard extends StatelessWidget {
  final StateData stateData;
  final VoidCallback taps;
  const StateCard({
    Key? key,
    required this.taps,
    required this.stateData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: taps,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white70,
                      )
                    ]
                ),
                child: Image(
                  //for now just adding image
                  image: AssetImage(stateData.image),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(stateData.name,
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
