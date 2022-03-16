import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ilkokulmatematik/toplama/toplama_page.dart';
import 'package:ilkokulmatematik/cikarma/cikarma_page.dart';
import 'package:ilkokulmatematik/carpma/carpma_page.dart';
import 'package:ilkokulmatematik/bolme/bolme_page.dart';
import 'package:ilkokulmatematik/yazitipleri.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dört İşlem",
      theme: ThemeData(primaryColor: Colors.greenAccent[300]),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          centerTitle: true,
          title: Text(
            "Dört İşlem Uygulaması",
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: BodyPart(),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}

class BodyPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Card(
              margin: EdgeInsets.fromLTRB(25, 60, 25, 0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ToplamaPage()));
                },
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.plus,
                      size: 45,
                      color: Colors.red,
                    ),
                    title: Text(
                      "     Toplama İşlemleri",
                      style: kMetinStili,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              margin: EdgeInsets.fromLTRB(25, 40, 25, 20),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CikarmaPage()));
                },
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.minus,
                      size: 45,
                      color: Colors.red,
                    ),
                    title: Text(
                      "     Çıkarma İşlemleri",
                      style: kMetinStili,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              margin: EdgeInsets.fromLTRB(25, 20, 25, 40),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CarpmaPage()));
                },
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.times,
                      size: 45,
                      color: Colors.red,
                    ),
                    title: Text(
                      "     Çarpma İşlemleri",
                      style: kMetinStili,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              margin: EdgeInsets.fromLTRB(25, 0, 25, 60),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BolmePage()));
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      // return object of type Dialog
                      return AlertDialog(
                        title: new Text("bölme işlemi"),
                        content: new Text(
                            "bölme işlemini yaptığınızda küsüratı girmeyin."),
                        actions: <Widget>[
                          // usually buttons at the bottom of the dialog
                          new TextButton(
                            child: new Text("oke"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.divide,
                      size: 45,
                      color: Colors.red,
                    ),
                    title: Text(
                      "     Bölme İşlemleri",
                      style: kMetinStili,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
