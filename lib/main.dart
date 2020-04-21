import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AMW - Technologies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: MyHomePage(title: 'AMW - Technologies'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF173B45),
                      Color(0xFF225667)
                    ]
                  ),
                ),
                child: NavBar()),
            SizedBox(height: 100.0),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.network("images/amw-principal.png", scale: .85),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Olá!",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
                          color: Color(0xFF8591B0))),
                  RichText(
                    text: TextSpan(
                        text: "Bem vindos a ",
                        style:
                            TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                        children: [
                          TextSpan(
                              text: "AMW",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87))
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: Text(
                      "Desenvolvendo soluções para o seu negócio",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  SizedBox(height: 40,),

                  //Search()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Olá!",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat-Regular",
                    color: Color(0xFF8591B0))),
            RichText(
              text: TextSpan(
                  text: "Bem vindos a ",
                  style: TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                  children: [
                    TextSpan(
                        text: "AMW",
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87))
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text("Desenvolvendo soluções para o seu negócio"),
            ),
            SizedBox(height: 30,),
            Center(
              child: Image.network(
                "images/amw-principal.png",
                scale: 1,
              ),
            ),
            SizedBox(height: 32,),
            //Search(),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}

