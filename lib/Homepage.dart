import 'package:country_picker/country_picker.dart';
import 'package:country_pickers/country.dart';
import 'package:direqpay/Bottombuttonnform.dart';
import 'package:direqpay/SnWbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:slider_button/slider_button.dart';

class direqpay extends StatefulWidget {
  const direqpay({Key? key}) : super(key: key);
  @override
  State<direqpay> createState() => _direqpayState();
}

class _direqpayState extends State<direqpay> {
  var countryselected = "Select Country";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(232, 0, 0, 0),
      extendBody: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SafeArea(
            child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(236, 243, 219, 0),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(150))),
                height: 90,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 5, left: 15, right: 10),
                  child: builtradius(context),
                )),
          ),
          SnWbutton(),
          Bottombuttonnform()
        ],
      ),
    );
  }

  Widget builtradius(BuildContext context) {
    var r;
    r = (MediaQuery.of(context).size.height * 0.07 +
            MediaQuery.of(context).size.width * 0.07) /
        2;
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Icon(
        Icons.qr_code,
        color: Color.fromARGB(255, 255, 255, 255),
        size: 60,
      ),
      Row(
        children: [
          Icon(
            Icons.notifications,
            size: 30,
            color: Color.fromARGB(210, 255, 252, 252),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 25,
            child: Icon(Icons.person, size: 25),
          ),
        ],
      )
    ]);
  }
}
