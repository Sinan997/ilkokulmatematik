import 'package:flutter/material.dart';
import 'dart:math';

class BolmePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        centerTitle: true,
        title: Text(
          "Bölme İşlemleri",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: BolmeBody(),
      backgroundColor: Colors.greenAccent,
    );
  }
}

class BolmeBody extends StatefulWidget {
  @override
  _BolmeBodyState createState() => _BolmeBodyState();
}

class _BolmeBodyState extends State<BolmeBody> {
  TextEditingController inputController = TextEditingController();
  int num1 = Random().nextInt(10000) + 1000;
  int num2 = Random().nextInt(100) + 1;
  int result = 0;
  int userCevap = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            result == 0
                ? "$num1 / $num2 "
                : userCevap == (num1 / num2).toInt()
                    ? "Tebrikler doğru cevap:${(num1 / num2).toInt()}"
                    : "Maalesef yanlış Cevap:${(num1 / num2).toInt()}",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: inputController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Cevap:",
                labelText: "Sorunun Cevabını Girin:",
                labelStyle: TextStyle(fontSize: 25),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.blueGrey[600])),
            onPressed: () {
              setState(() {
                result = 1;
                userCevap = int.parse(inputController.text);
              });
            },
            child: Text(
              "Sonuç için tıkla",
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blueGrey[600])),
              onPressed: () {
                setState(() {
                  num1 = Random().nextInt(10000) + 1000;
                  num2 = Random().nextInt(100) + 1;
                  result = 0;
                });
              },
              child: Text(
                "Yenile",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    ));
  }
}
