import 'package:flutter/material.dart';
import 'file_utils.dart';

class Hatira extends StatefulWidget {
  Hatira() : super();

  final String title = "Şehir Mesajı";

  @override
  _HatiraState createState() => _HatiraState();
}

class _HatiraState extends State<Hatira> {
  String fileContents = "Veri Yok";
  final myController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(width: 400,height: 100,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Text("TÜRKİYE'DE EN SEVDİĞİNİZ İL?",style: TextStyle(fontSize: 25,color: Colors.white),),
                  color: Color(0xFFFF9800),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextField(
                controller: myController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: SizedBox(
                height: 70,
                width: 250,
                child: ElevatedButton(
                  child: Text("Şehri Kaydet",style: TextStyle(fontSize: 20),),
                  onPressed: () {
                    FileUtils.saveToFile(myController.text);

                  },
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: 250,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                child: Text("Mesajı Oku",style: TextStyle(fontSize: 20),),
                onPressed: () {
                  FileUtils.readFromFile().then((contents) {
                    setState(() {
                      fileContents = contents;
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text(fileContents+" dæ Seni Çok Sevdi..",style: TextStyle(fontSize: 20),)));
                    });
                  });
                },
              ),
            ),
            //Text(fileContents),
          ],
        ),
      ),
    );
  }
}