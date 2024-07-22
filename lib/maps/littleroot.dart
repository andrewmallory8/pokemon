import 'package:flutter/material.dart';

class LittleRoot extends StatelessWidget {
  double x;
  double y;
  String currentMap;
  
  LittleRoot({required this.x, required this.y, required this.currentMap});

  @override
  Widget build(BuildContext context) {
    if(currentMap == 'littleroot')
    // ignore: curly_braces_in_flow_control_structures
    return Container(
      alignment: Alignment(x, y),
      child: Image.asset(
        'assets/images/start.png',
        width: MediaQuery.of(context).size.width * 0.75,
        fit: BoxFit.cover,
      ),
    );
    else 
    // ignore: curly_braces_in_flow_control_structures
    return Container();
  }
}