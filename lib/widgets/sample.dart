import 'package:flutter/material.dart';
class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  State<Sample> createState() => _SampleState();
}


class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff002B5B),
      body:SafeArea(
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius:BorderRadius.circular(25)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    cursorHeight: 20,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,color: Colors.white,)
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Colombo",
              style: TextStyle(
                fontSize: 25,
                // color: Color(0xff8FE3CF),
                  color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            Text("25°C",
              style: TextStyle(
                  fontSize: 70,
                   color: Color(0xff8FE3CF),

                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 5,),
            Text("High of Max Temprature",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w300
              ),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width/2.4,
                  decoration: BoxDecoration(
                    color: Color(0xff495C83),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Temperature",style: TextStyle(
                            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Icon(Icons.thermostat_outlined,color: Color(0xff8FE3CF),size: 50,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("25°C",style: TextStyle(
                            color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width/2.4,
                  decoration: BoxDecoration(
                      color: Color(0xff495C83),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Weather",style: TextStyle(
                            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Icon(Icons.filter_drama_outlined,color: Color(0xff8FE3CF),size: 50,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("25",style: TextStyle(
                            color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width/2.4,
                  decoration: BoxDecoration(

                      color: Color(0xff495C83),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Humidity",style: TextStyle(
                            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Icon(Icons.wb_sunny,color: Color(0xff8FE3CF),size: 50,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("25%",style: TextStyle(
                            color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width/2.4,
                  decoration: BoxDecoration(
                      color: Color(0xff495C83),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Wind Speed",style: TextStyle(
                            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Icon(Icons.waves_outlined,color: Color(0xff8FE3CF),size: 50,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("25MPH",style: TextStyle(
                            color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
