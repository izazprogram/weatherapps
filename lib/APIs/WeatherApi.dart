import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherSide extends StatelessWidget {
  const WeatherSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Weather Update",style: TextStyle(
            fontSize: 30
          ),),
        ),
      ),

      body: Column(
        children: <Widget>[
          Card(
            elevation: 10,
            color: Colors.tealAccent,
            child: Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("You Are In",style: TextStyle(
                        fontSize: 30,
                      ),),
                      Text("Dhaka",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  )
                ],
              ),
            ),
          )

        ],
      ),
    ) );
  }
}
