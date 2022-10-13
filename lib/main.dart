import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weatherapp/widgets/sample.dart';
import 'dart:async';
import 'dart:convert';
import 'widgets/main_widget.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHome(),
    );
  }
}
class search {
  static String searchlocation = "puttalam";
}
Future <WeatherInfo> fetchWeather()async{
  late String zipCode = search.searchlocation;
  final apiKey = '2bf7c1ab49c11e7b41744ff893a38732';
  final requestUrl = 'https://api.openweathermap.org/data/2.5/weather?q=$zipCode&appid=$apiKey&units=metric';
  final response = await http.get(Uri.parse(requestUrl));
  if(response.statusCode ==200){
    return WeatherInfo.fromJSON(jsonDecode(response.body));
  }else{
    throw Exception("Error Loading Request Url Faild");
  }
}

class WeatherInfo{
  final location;
  final temp;
  final tempMin;
  final tempMax;
  final weather;
  final humidity;
  final windSpeed;

   WeatherInfo({
    required this.location,
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.weather,
    required this.humidity,
    required this.windSpeed,

}
);
   factory WeatherInfo.fromJSON(Map<String,dynamic> json){
     return WeatherInfo(
       location: json['name'],
       temp: json['main']['temp'],
       tempMin: json['main']['temp_min'],
       tempMax: json['main']['temp_max'],
       weather: json['weather'][0]['description'],

       humidity: json['main']['humidity'],
       windSpeed: json['wind']['speed'],
     );
   }
}



class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  late Future<WeatherInfo> futureWeather;
  @override
  void initState() {
    futureWeather = fetchWeather();
    super.initState();
  }
  static late String searchplace ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff002B5B),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color:Color(0xff002B5B),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)
                ),
                child:  TextFormField(
                  onChanged: (val){
                    setState(() {
                      searchplace = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    suffixIcon: TextButton(onPressed: () {
                      setState(() {
                        search.searchlocation = searchplace;
                        futureWeather = fetchWeather();
                      });
                    },
                    child: Text("Search"),),
                    icon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child:Icon(Icons.search,color: Colors.black,),
                    )

                  ),

                ),
              ),
            ),
            Expanded(
              child: FutureBuilder<WeatherInfo>(
                future: futureWeather,
                builder: (context,snapShot){
                  if(snapShot.hasData){
                    return MainWidget(
                        location:snapShot.data?.location ,
                        temp: snapShot.data?.temp ,
                        tempMin: snapShot.data?.tempMin ,
                        tempMax: snapShot.data?.tempMax ,
                        weather: snapShot.data?.weather,
                        humidity: snapShot.data?.humidity,
                        windSpeed: snapShot.data?.windSpeed,
                    );//
                  }else if(snapShot.hasError){
                    return Center(
                      child: Text("{$snapShot.error}"),
                    );
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


