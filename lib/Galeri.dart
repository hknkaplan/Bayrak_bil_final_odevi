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
      home: Galeri(),
    );
  }
}

class Galeri extends StatefulWidget {
  @override
  _GaleriState createState() => _GaleriState();
}

class _GaleriState extends State<Galeri> {
  void poup(String il,String tanimi){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(il,style: TextStyle(fontSize: 40),),
          content: new Text(tanimi,style: TextStyle(fontSize: 23),),

          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Kapat",style: TextStyle(fontSize: 20),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("GALERİ"),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                width: ekranGenisligi,
                height: 110,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: (){
                          //ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Türkiye")));
                          poup("İstanbul", "Anadolu ile Avrupa yakasının birleşimi..");
                        },
                        child: Image.asset("galeri/istanbul.jpg")),
                    GestureDetector(
                        onTap: (){
                          //ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Türkiye")));
                          poup("Ankara", "Sokakları siyatet kokan başkent..");
                        },
                        child: Image.asset("galeri/ankara.jpg")),
                    //Image.asset("resimler/almanya.png"),
                    //Image.asset("resimler/bosnahersek.png"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                width: ekranGenisligi,
                height: 110,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: (){
                          //ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Türkiye")));
                          poup("Bursa", "İskenderiyle meşhur, kayak merkezi ile ünlü..");
                        },
                        child: Image.asset("galeri/bursa.jpg")),
                    GestureDetector(
                        onTap: (){
                          //ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Türkiye")));
                          poup("İzmir", "Güzelin ve denizin birlikteliği..");
                        },
                        child: Image.asset("galeri/izmir.jpg")),
                    //Image.asset("resimler/yunanistan.png"),
                    // Image.asset("resimler/slovakya.png"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                width: ekranGenisligi,
                height: 110,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: (){
                          //ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Türkiye")));
                          poup("Antalya", "Turizim Cenneti..");
                        },
                        child: Image.asset("galeri/antalya.jpg")),
                    GestureDetector(
                        onTap: (){
                          //ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Türkiye")));
                          poup("Konya", "Anlatılmaz sadece yaşanır..");
                        },
                        child: Image.asset("galeri/konya.jpg")),
                    //Image.asset("resimler/ispanya.png"),
                    //Image.asset("resimler/yunanistan.png"),
                    // Image.asset("resimler/slovakya.png"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                width: ekranGenisligi,
                height: 110,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: (){
                          //ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Türkiye")));
                          poup("Mardin", "Gece gerdanlık gündüz seyranlık..");
                        },
                        child: Image.asset("galeri/mardin.jpg")),
                    GestureDetector(
                        onTap: (){
                          //ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text("Türkiye")));
                          poup("Mersin", "Bir liman şehri..");
                        },
                        child: Image.asset("galeri/mersin.jpg")),
                    //Image.asset("resimler/yunanistan.png"),
                    // Image.asset("resimler/slovakya.png"),
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
