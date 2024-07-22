import 'package:flutter/material.dart';

class MyBoy extends StatelessWidget {
  final int boySpriteCount;
  final String direction;
  final String location;
  double height = 20;

  MyBoy({required this.boySpriteCount, required this.direction, required this.location});


  @override
  Widget build(BuildContext context) {
    if(location == 'littleroot'){
      height = 20;
  }else if (location == 'pokelab'){
    height = 20;
  } else if (location == 'battleground' || location == 'attackoptions' || location == 'battlefinishedscreen') {
    height = 0;
  }
    return Container(
      height: 20,
      child : Image.asset(
        // ignore: prefer_interpolation_to_compose_strings
        'assets/images/boy' + direction + boySpriteCount.toString() + '_.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}