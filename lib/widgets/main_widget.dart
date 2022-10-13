import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/weather_tile.dart';

class MainWidget extends StatelessWidget {
  final location;
  final temp;
  final tempMin;
  final tempMax;
  final weather;
  final humidity;
  final windSpeed;

  MainWidget({
    required this.location,
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.weather,
    required this.humidity,
    required this.windSpeed,

  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xff002B5B),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2.5,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff002B5B),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  "${location.toString()}",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Color(0xff8FE3CF)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                  child: Text(
                    "${temp.toInt()}°C",
                    style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Color(0xffE94560)),
                  ),
                ),
                Text(
                  "High of ${tempMax.toString()}°C of ${tempMin.toString()}°C",
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff9e9e9e)),

                )
              ],
            ),
          ),
          Expanded(
              child:Padding(
                padding: EdgeInsets.all(12),
                child: ListView(
                   children: [
                     WeatherTile(icon: Icons.thermostat_outlined,
                         title: "Temperature",
                         subtitle: "${temp.toInt().toString()}°C"),
                     WeatherTile(icon: Icons.filter_drama_outlined,
                         title: "Weather",
                         subtitle: "${weather.toString()}"),
                     WeatherTile(icon: Icons.wb_sunny,
                         title: "Humidity",
                         subtitle: "${humidity.toInt().toString()}%"),
                     WeatherTile(icon: Icons.waves_outlined,
                         title: "Wind Speed",
                         subtitle: "${windSpeed.toInt().toString()}MPH"),
                   ],
                ),
              )
          )
        ],
      ),
    );
  }
}
