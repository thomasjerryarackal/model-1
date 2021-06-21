import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String name;
  const Details({Key? key,
    required this.name

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("$name"),
      ),
    );
  }
}
