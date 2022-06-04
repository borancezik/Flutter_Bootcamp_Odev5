import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  var textKontrol = TextEditingController();
  var textKontrol2 = TextEditingController();
  var sonuc = 0;
  int sayac = 0;

  int buttonAktivite(String sayi){
    if(sayac == 0) {
      textKontrol.text = sayi;
    }
    if(sayac == 1)
    {
      textKontrol2.text = sayi;
      return sayac=0;
    }
    return sayac = 1;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hesap Makinesi"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(hintText: "1. Sayıyı Giriniz"),
                controller: textKontrol,
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(hintText: "2. Sayıyı Giriniz"),
                controller: textKontrol2,
              ),
              SizedBox(height: 20,),
              Text("Sonuç : $sonuc",style: TextStyle(fontSize: 22),),
              SizedBox(height: 20,),
              //-------------------------------------------
              Row( // İLK SIRA 1-2-3
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        buttonAktivite("1");
                      },
                      child: const Text("1"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        buttonAktivite("2");
                      },
                      child: const Text("2"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        buttonAktivite("3");
                      },
                      child: const Text("3"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                ],
              ),
              //-------------------------------------------------------------------
              Row( //İKİNCİ SIRA 4-5-6
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        buttonAktivite("4");
                      },
                      child: const Text("4"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        buttonAktivite("5");
                      },
                      child: const Text("5"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        buttonAktivite("6");
                      },
                      child: const Text("6"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                ],
              ),
           //---------------------------------------------------------------------
              Row( // ÜÇÜNCÜ SIRA 7-8-9
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        buttonAktivite("7");
                      },
                      child: const Text("7"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        buttonAktivite("8");
                      },
                      child: const Text("8"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        buttonAktivite("9");
                      },
                      child: const Text("9"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                ],
              ),
              //-----------------------------------------------------------------
              Row( // DÖRDÜNCÜ SIRA 0 - SİL - TOPLA
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        buttonAktivite("0");
                      },
                      child: const Text("0"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        textKontrol2.text = " ";
                        textKontrol.text = " ";
                        sayac = 0;
                        setState(() {
                          sonuc = 0;
                        });
                      },
                      child: const Text("Temizle"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sonuc = int.parse(textKontrol.text) +  int.parse(textKontrol2.text);
                        });
                        textKontrol2.text = " ";
                        textKontrol.text = " ";
                      },
                      child: const Text("Topla"),
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
