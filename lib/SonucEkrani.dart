import 'package:bayrak_bil/HakkindaEkrani.dart';
import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  int dogruSayisi;

  SonucEkrani({this.dogruSayisi});

  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Spacer(),
            Text("${widget.dogruSayisi} DOĞRU ${5-widget.dogruSayisi} YANLIŞ",style: TextStyle(fontSize: 30),),
            Spacer(),
            Text("%${((widget.dogruSayisi*100)/5).toInt()} Başarı",style: TextStyle(fontSize: 30,color: Colors.pink),),
            Spacer(),
            SizedBox(width: 250, height: 50,
              child: RaisedButton(
                child: Text("TEKRAR DENE",style: TextStyle(fontSize: 20),),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
            Spacer(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.info_outline_rounded),
                    elevation: 10,
                    mini: false,
                    backgroundColor: Colors.red,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HakkindaEkrani()));
                    },

                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
