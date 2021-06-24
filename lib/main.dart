import 'package:bayrak_bil/QuizEkrani.dart';
import 'package:bayrak_bil/Tmenu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
   @override
  Widget build(BuildContext context) {
     
     var ekranBilgisi = MediaQuery.of(context);
     final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("BAYRAK BİL"),
      ),
      body: Center(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                  width: ekranGenisligi,
                  height: 60,
                  child:Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      GestureDetector(onLongPress: (){
                        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Türkiye",style: TextStyle(fontSize: 35),)));
                      },
                          child: Image.asset("resimler/turkiye.png")),
                    GestureDetector(onLongPress: (){
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Romanya",style: TextStyle(fontSize: 35),)));
                    },
                        child: Image.asset("resimler/romanya.png")),
                    GestureDetector(onLongPress: (){
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Almanya",style: TextStyle(fontSize: 35),)));
                    },
                        child: Image.asset("resimler/almanya.png")),
                    GestureDetector(onLongPress: (){
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Bosna Hersek",style: TextStyle(fontSize: 35),)));
                    },
                        child: Image.asset("resimler/bosnahersek.png")),
                    ],
                  ),
              ),
            ),
            Spacer(),
            Text("QUİZE HOŞGELDİNİZ",style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),),
            Spacer(),
            SizedBox(width: 250, height: 50,
              child: RaisedButton(
                color: Colors.blue,
                child: Text("BAŞLA",style: TextStyle(fontSize: 25)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizEkrani()));
                },
              ),
            ),
            Spacer(),
            SizedBox(width: 250, height: 50,
              child: RaisedButton(
                color:Colors.red,
                child: Text("TÜRKİYE",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.white)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Tmenu()));
                },
              ),
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                width: ekranGenisligi,
                height: 60,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(onLongPress: (){
                        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Azerbaycan",style: TextStyle(fontSize: 35),)));
                      },
                        child: Image.asset("resimler/azerbaycan.png")),
                    GestureDetector(onLongPress: (){
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("İspanya",style: TextStyle(fontSize: 35),)));
                        },
                        child: Image.asset("resimler/ispanya.png")),
                    GestureDetector(onLongPress: (){
                          ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Yunanistan",style: TextStyle(fontSize: 35),)));
                        },
                        child: Image.asset("resimler/yunanistan.png")),
                    GestureDetector(onLongPress: (){
                          ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Slovakya",style: TextStyle(fontSize: 35),)));
                        },
                        child: Image.asset("resimler/slovakya.png")),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),

    );
  }
}
