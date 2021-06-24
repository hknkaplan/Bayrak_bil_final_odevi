import 'package:bayrak_bil/LineChartSample2.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'Galeri.dart';
import 'Hatira.dart';
import 'iller.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tmenu(),
    );
  }
}

class Tmenu extends StatefulWidget {

  @override
  _TmenuState createState() => _TmenuState();
}

class _TmenuState extends State<Tmenu> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(width: 250,height: 100,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Text("NUFUS ARTIŞ GRAFİĞİ",style: TextStyle(fontSize: 25),),
                  textColor: Colors.white,
                  color: Color(0xFFFF9800),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LineChartSample2()));
                  },
                ),
              ),

              SizedBox(width: 250,height: 100,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Text("İLLER",style: TextStyle(fontSize: 25),),
                  textColor: Colors.white,
                  color: Color(0XFF1976D2),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> iller()));
                  },
                ),
              ),

              SizedBox(width: 250,height: 100,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Text("GALERİ",style: TextStyle(fontSize: 25),),
                  textColor: Colors.white,
                  color: Color(0xFF43A047),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Galeri()));
                  },
                ),
              ),
              SizedBox(width: 250,height: 100,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Text("HATIRA DEFTERİ",style: TextStyle(fontSize: 25),),
                  textColor: Colors.white,
                  color: Color(0xFFF44336),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Hatira()));


                  },
                ),
              ),
            ],

          ),
        ),
      ),

    );
  }
}
