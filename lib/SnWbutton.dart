import 'package:country_picker/country_picker.dart';
import 'package:direqpay/Popup.dart';
import 'package:flutter/material.dart';

import 'package:country_picker/country_picker.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:slider_button/slider_button.dart';
void main() {
runApp(SnWbutton());
}

var countryselected = "Select Country";

class SnWbutton extends StatefulWidget {
  const SnWbutton({ Key? key }) : super(key: key);
  @override
  State<SnWbutton> createState() => _SnWbuttonState();
}
class _SnWbuttonState extends State<SnWbutton> {
  
  @override
  Widget build(BuildContext context) {
    return Center(
              child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.yellow, width: 1.3),
                        borderRadius: BorderRadius.circular(18.0)),
                    elevation: 0,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 150, 50),
                    backgroundColor: Colors.black),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => Container(
                      height: 60,
                      child: Sendpopup()
                    ),
                  );
                },
                child: Text(
                  "SEND",
                  style: TextStyle(color: Colors.yellow, letterSpacing: 1),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.yellow, width: 1.3),
                        borderRadius: BorderRadius.circular(18.0)),
                    elevation: 5,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 150, 50),
                    backgroundColor: Colors.black),
                onPressed: () {},
                child: Text(
                  "WITHDRAW",
                  style: TextStyle(color: Colors.yellow, letterSpacing: 1),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: SliderButton(
                  height: 60,
                  highlightedColor: Colors.black,
                  baseColor: Colors.white,
                  backgroundColor: Color.fromARGB(69, 155, 39, 176),
                  action: () {
                    ///Do something here
                  },
                  label: Text(
                    "Slide to Check",
                    style: TextStyle(
                        color: Color(0xff4a4a4a),
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  icon: Center(
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                      size: 25.0,
                    ),
                  ),
                  buttonSize: 60,
                  buttonColor: Colors.white70,
                ),
              )
            ],
          ));
  }
}