import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'APIs/WeatherApi.dart';

class MyCardDesign extends StatelessWidget {
  const MyCardDesign({Key? key}) : super(key: key);

  get index => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
backgroundColor: Colors.white38,
      appBar: AppBar(
        centerTitle: true,
        title: Text(

          "MyCardDesign",
          style: TextStyle(
            fontSize: 20,
          ),

        ),
      ),
      body: ListWheelScrollView(
        itemExtent: 200,
        physics: FixedExtentScrollPhysics(),
        //perspective: 0.008,
        //diameterRatio: 0.8,

        children: [

            Card(
              color: Colors.yellow[200],
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),

                child: Container(
                  height: 350,
                  width: 350,
                  child: Center(child: Text("MyCard")),



            ),
          ),
          Card(
            color: Colors.greenAccent[200],
            elevation: 2,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: new InkWell(
              onTap: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WeatherSide(

                          )));

              },

              child: Container(
                height: 350,
                width: 350,

            ),
          ),
          ),
          Card(
            color: Colors.green[200],
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Container(
              height: 350,
              width: 350,
            ),
          ),
          Card(
            color: Colors.deepPurpleAccent[200],
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Container(
              height: 350,
              width: 350,
            ),
          ),
          Card(
            color: Colors.purple[200],
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Container(
              height: 350,
              width: 350,
            ),
          ),
          Card(
            color: Colors.green[200],
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Container(
              height: 350,
              width: 350,
            ),
          ),
        ],
      ),
    ));
  }
}
