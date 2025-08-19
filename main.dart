import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Hesap Makinesi",
      home: Iskele(),
    );
  }
}


class Iskele extends StatelessWidget {
  const Iskele({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: AnaEkran(),
    );
  }
}



class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  dynamic  sayi1, sayi2, sonuc;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla(){
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });

  }
  sayicikar(){
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });

  }
  sayicarp(){
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });

  }
  sayibol(){
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: sayiTopla, child: Text("+")),
                ElevatedButton(onPressed: sayicikar, child: Text("-")),
                ElevatedButton(onPressed: sayicarp, child: Text("*")),
                ElevatedButton(onPressed: sayibol, child: Text("/")),
              ],
            )

          ],
        ),
      ) ,
    );
  }
}


