import 'package:bayrak_bil/QuizEkrani.dart';
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
                      Image.asset("resimler/turkiye.png"),
                      Image.asset("resimler/romanya.png"),
                      Image.asset("resimler/almanya.png"),
                      Image.asset("resimler/bosnahersek.png"),
                    ],
                  ),
              ),
            ),
            Spacer(),
            Text("QUİZE HOŞGELDİNİZ",style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),),
            Spacer(),
            SizedBox(width: 250, height: 50,
              child: RaisedButton(
                child: Text("BAŞLA",style: TextStyle(fontSize: 25)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizEkrani()));
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
                    Image.asset("resimler/azerbaycan.png"),
                    Image.asset("resimler/ispanya.png"),
                    Image.asset("resimler/yunanistan.png"),
                    Image.asset("resimler/slovakya.png"),
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
