import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HakkindaEkrani extends StatefulWidget {
  @override
  _HakkindaEkraniState createState() => _HakkindaEkraniState();
}

class _HakkindaEkraniState extends State<HakkindaEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hakkında ?"),
        ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Padding(
              padding: const EdgeInsets.only(top: 70,bottom: 10),
              child: Image.asset("resimler/suTeknoloji.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
              child: Text("Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından "
                  "yürütülen 3311409 kodlu Mobil Programlama dersi kapsamında 163311054 "
                  "numaralı Hakan KAPLAN tarafından 22.04.2021 günü yapılmıştır.",
                style: TextStyle(fontSize: 24,),
                textAlign: TextAlign.center,

              ),
            ),
            ),
          ],



      ),
     ),
    );
  }
}
