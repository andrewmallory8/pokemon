import 'package:flutter/material.dart';
import 'package:pokemon/button.dart';
import 'package:pokemon/characters/boy.dart';
import 'package:pokemon/maps/littleroot.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget{
@override
// ignore: library_private_types_in_public_api
_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  double mapX = 1.125;
  double mapY = 0.65;
  String currentLocation = 'littleroot';


  int boySpriteCount = 0;
  String boyDirection = 'Down';
  double step = 0.25;



  void moveUp(){
    boyDirection = 'Up';
    setState(() {
      mapY += step;
    });
  }
  void moveRight(){
    boyDirection = 'Right';
    setState(() {
      mapX -= step;
    });
  }
  void moveLeft(){
    boyDirection = 'Left';
    setState(() {
      mapX += step;
    });
  }
  void moveDown(){
    boyDirection = 'Down';
    setState(() {
      mapY -= step;
    });
  }
  void pressedA(){}
  void pressedB(){}
  @override
  Widget build(BuildContext context){
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.black,
              child: Stack(
                children: [
                  LittleRoot(x: mapX, y: mapY, currentMap: currentLocation
                  ),
                  Container(
                    alignment: Alignment(0, 0),
                    child: MyBoy( location: currentLocation,
                    boySpriteCount: boySpriteCount,
                    direction: boyDirection),
                  ),
                ],
              )
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[900],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: prefer_const_constructors
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                    Text('G A M E B O Y', style : TextStyle(color: Colors.white, fontSize: 18)),
                    // ignore: prefer_const_constructors
                    Text(' ❤️ ', style : TextStyle(color: Colors.red, fontSize: 20)),
                    // ignore: prefer_const_constructors
                    Text('F L U T T E R ', style : TextStyle(color: Colors.white, fontSize: 18)),
                        ],
                    ),
                    
                    
                    
                    
                    
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Column(
                        children: [
                        Container(
                          height: 50,
                          width: 50,
                        ),
                        MyButton(
                          text: '←',
                          function: moveLeft,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                        ),
                          ],
                        ),
                        Column(
                        children: [
                        MyButton(
                          text: '↑',
                          function: moveUp,
                        ),
                         Container(
                          height: 50,
                          width: 50,
                        ),
                        MyButton(
                          text: '↓',
                          function: moveDown,
                        ),
                          ],
                        ),
                        Column(
                        children: [
                         Container(
                          height: 50,
                          width: 50,
                        ),
                        MyButton(
                          text: '→',
                          function: moveRight,
                        ),
                         Container(
                          height: 50,
                          width: 50,
                        ),
                          ],
                        ),
                       Row(
                        children: [
                          Column(
                            children: [
                              Container(
                          height: 50,
                          width: 50,
                        ),
                        MyButton(
                          text: 'b',
                          function: () {},
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyButton(
                                text: 'a',
                                function: () {},
                              ),
                              Container(
                          height: 50,
                          width: 50,
                        ),
                            ],
                          )
                        ],
                       )
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    Text('C R E A T E D B Y A N D R E W', style : TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}