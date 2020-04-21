import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["Home", "Produtos", "Parceiros"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(text, style: TextStyle(fontFamily: "Montserrat-Bold", fontSize: 20.0)),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 16),
            Container(
              width: 200.00,
              height: 100.00,
              child: Image.asset("images/amwlogo.png"),
            ),
          ],
        ),
        if (!ResponsiveLayout.isSmallScreen(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[...navItem()]..add(InkWell(
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFF2A7E3F),
                            Color(0xFF0F2E2D)
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF6078ea).withOpacity(.3),
                            offset: Offset(0, 8),
                            blurRadius: 8)
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: Center(
                      child: Text("Contato",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1,
                              fontFamily: "Montserrat-Bold")),
                    ),
                  ),
                ))),
          )
        else
          Image.network("images/menu.png", width: 26, height: 26)
      ],
    );
  }
}
