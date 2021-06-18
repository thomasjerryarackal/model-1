import 'package:avaride2/utilities/contants.dart';
import 'package:flutter/material.dart';

class Locational extends StatelessWidget {
  const Locational({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        height: 170,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:Colors.white24,

        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
                right: 8,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Insert in local \nrecommendation?",
                    style: TextStyle(
                      color:kTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Turn on location service to see venues, \n artwoks and more near you",
                    style: TextStyle(
                      color:kTextColorD,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(kTagText),
                        ),
                        onPressed: () { },
                        child: Text("Not Now"),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(kTagText),
                        ),
                        onPressed: () { },
                        child: Text("Turn On"),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}
