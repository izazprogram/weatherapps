import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class WeatherSide extends StatefulWidget {
  const WeatherSide({Key? key}) : super(key: key);

  @override
  State<WeatherSide> createState() => _WeatherSideState();
}

class _WeatherSideState extends State<WeatherSide> {

  var cityname, maintemp,date, min, max, pressure, sunrise, sunset;

    Future getWeather() async{
      final response = await http.get(Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q=Chittagong&units=metric&appid=c85ba05897935ded54e404dc7326088c"
      ));
      var showData = jsonDecode(response.body);


      setState(() {
        this.cityname = showData["name"];
        this.maintemp = showData["main"]["temp"];
        this.date = showData ["dt"];
        this.min = showData["main"]["temp_min"];
        this.max = showData["main"]["temp_max"];
        this.pressure = showData["main"]["pressure"];
        this.sunrise = showData["sys"]["sunrise"];
        this.sunset = showData["sys"]["sunset"];
      });
    }


    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getWeather();

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(
          backgroundColor: Colors.brown[200],
      appBar: AppBar(backgroundColor: Colors.brown[200],
        title: Center(
          child: Text(
            "Weather Update",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Card(
              color: Colors.blueGrey[200],
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("You Are In ",style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text(
                          cityname!= null ? cityname.toString() : "Dhaka",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),

                    Text(
                      maintemp != null? "Here is " +maintemp.toString()+"\u00B0 C":
                      "Here is 30 \u2103 C",style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.pinkAccent
                    ),),

                    Text(
                      date != null? date.toString() +"AM":
                          "Time",style: TextStyle(
                      fontSize: 30
                    ),
                    )
                  ],
                ),
              ),
            ),



          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Card(
                color: Colors.blueGrey,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Container(
                  height: 200,
                  width: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.temperatureLow),
                    SizedBox(height: 10,),
                    Text("Min Temp ",
                    style: TextStyle(
                        fontSize: 20
                    ),),
                      SizedBox(height: 10,),
                      Text(
                        min != null ? min.toString() +"\u00B0 C":
                        "20 \u00B0 C",style: TextStyle(
                          fontSize: 20
                      ),),

                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.blueGrey[200],
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Container(
                  height: 200,
                  width: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.temperatureLow),
                      SizedBox(height: 10,),
                      Text("Max Temp ",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                      SizedBox(height: 10,),
                      Text(
                        max != null ? max.toString() +"\u00B0 C":
                        "20 \u00B0 C",style: TextStyle(
                          fontSize: 20
                      ),),

                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.cyan,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Container(
                  height: 200,
                  width: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.temperatureLow),
                      SizedBox(height: 10,),
                      Text("Pressur",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                      SizedBox(height: 10,),
                      Text(
                        pressure != null ? pressure.toString() +"Pa":
                        "20 Pa",style: TextStyle(
                          fontSize: 20
                      ),),

                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Card(
                color: Colors.redAccent[200],
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Container(
                  height: 200,
                  width: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.sunPlantWilt),
                    SizedBox(height: 10,),
                    Text("Sun Rise ",
                    style: TextStyle(
                        fontSize: 20
                    ),),
                      SizedBox(height: 10,),
                      Text(
                        sunrise != null ? sunrise.toString() +"AM":
                        "05:30AM",style: TextStyle(
                          fontSize: 20
                      ),),

                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.black12,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Container(
                  height: 200,
                  width: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.sun),
                      SizedBox(height: 10,),
                      Text("Sun Set ",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                      SizedBox(height: 10,),
                      Text(
                        sunset != null ? sunset.toString() +"PM":
                        "06:30PM",style: TextStyle(
                          fontSize: 20
                      ),),

                    ],
                  ),
                ),
              ),


              Card(
                color: Colors.cyan,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Container(
                  height: 200,
                  width: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.wandMagic),
                      SizedBox(height: 10,),
                      Text("Time",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                      SizedBox(height: 10,),
                      Text(
                        date != null ? date.toString() +"AM":
                        "12:00Pm",style: TextStyle(
                          fontSize: 20
                      ),),

                    ],
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
    ));
  }
}
