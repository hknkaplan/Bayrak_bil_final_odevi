import 'package:flutter/material.dart';
//import 'package:grafikdeneme/LineChartSample2.dart';

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
      home: iller(),
    );
  }
}

class iller extends StatefulWidget {


  @override
  _illerState createState() => _illerState();
}

class _illerState extends State<iller> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Türkiyenin En Büyük 5 İli")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.orangeAccent,

            child: Column(children: [

              Text("İstanbul",style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold)),
              Text("Nufus : 14.46 Milyon",style: TextStyle(fontSize: 24),),
              Text("Yüz Ölçümü : 5.343 km2",style: TextStyle(fontSize: 24),),
              Text("Bulunduğu Bölge : Marmara Bölgesi",style: TextStyle(fontSize: 24),),
            ],),
          ),
          Container(

            color: Colors.deepOrange,
            child: Column(children: [
              Text("Ankara",style: TextStyle(fontSize: 31,fontWeight: FontWeight.bold),),
              Text("Nufus : 5.66 Milyon",style: TextStyle(fontSize: 24),),
              Text("Yüz Ölçümü 24.521 km2",style: TextStyle(fontSize: 24),),
              Text("Bulunduğu Bölge : İç Anadolu Bölgesi",style: TextStyle(fontSize: 24),),
            ],),
          ),
          Container(

            color: Colors.red,
            child: Column(children: [
              Text("İzmir",style: TextStyle(fontSize: 31,fontWeight: FontWeight.bold),),
              Text("Nufus : 4.36 Milyon",style: TextStyle(fontSize: 24),),
              Text("Yüz Ölçümü 11.891 km2",style: TextStyle(fontSize: 24),),
              Text("Bulunduğu Bölge : Ege Bölgesi",style: TextStyle(fontSize: 24,),),
            ],),
          ),
          Container(

            color: Colors.deepOrange,
            child: Column(children: [
              Text("Bursa",style: TextStyle(fontSize: 31,fontWeight: FontWeight.bold),),
              Text("Nufus : 3.10 Milyon",style: TextStyle(fontSize: 24),),
              Text("Yüz Ölçümü 1.036 km2",style: TextStyle(fontSize: 24),),
              Text("Bulunduğu Bölge : Marmara Bölgesi",style: TextStyle(fontSize: 24),),
            ],),
          ),
          Container(

            color: Colors.lightBlueAccent,
            child: Column(children: [
              Text("Antalya",style: TextStyle(fontSize: 31,fontWeight: FontWeight.bold),),
              Text("Nufus : 2.42 Milyon",style: TextStyle(fontSize: 24),),
              Text("Yüz Ölçümü 1.417 km2",style: TextStyle(fontSize: 24),),
              Text("Bulunduğu Bölge : Akdeniz Bölgesi",style: TextStyle(fontSize: 24),),
            ],),
          ),
        ],
      ),
    );
  }
}
//Text("İSTANBUL1112", style: TextStyle(
//fontSize: 20,
//fontWeight: FontWeight.bold,
//color:Colors.pink), ),
