import 'package:flutter/material.dart';

void main(){
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('AMW - Tecnologies',style: TextStyle(color: Color(0xFF1B2B50),fontSize: 22.0)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 50.00,
                      height: 50.00,
                      color: Colors.pink,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 50.00,
                      height: 50.00,
                      color: Colors.amber,
                    ),
                    Container(
                      width: 50.00,
                      height: 50.00,
                      color: Colors.pink,
                    ),
                    Container(
                      width: 50.00,
                      height: 50.00,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ],
            ),
          ),
          //SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.pink ,
              //width: 640.00,
              height: 600.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Aqui va ser a logo", style: TextStyle(color: Colors.white, fontSize: 16.0, backgroundColor: Colors.green),),
                Text("Todos os direitos reseravdos", style: TextStyle(color: Colors.white, fontSize: 16.0,backgroundColor: Colors.green),),
                Text("+55 84 996970 7753", style: TextStyle(color: Colors.white, fontSize: 16.0,backgroundColor: Colors.green),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


