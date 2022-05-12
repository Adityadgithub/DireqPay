import 'package:flutter/material.dart';

import 'package:country_picker/country_picker.dart';
import 'package:country_pickers/country.dart';
import 'package:direqpay/SnWbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(Bottombuttonnform());
}

class Bottombuttonnform extends StatefulWidget {
  const Bottombuttonnform({Key? key}) : super(key: key);
  @override
  State<Bottombuttonnform> createState() => _BottombuttonnformState();
}

class _BottombuttonnformState extends State<Bottombuttonnform> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.3,
            child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(235, 0, 0, 0),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.3),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "USDC",
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                )),
          ),
          Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 350, 50),
                    backgroundColor: Colors.black),
                onPressed: () {},
                child: Text(
                  "DEPOSIT",
                  style: TextStyle(color: Colors.green, letterSpacing: 1),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    elevation: 2,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 350, 50),
                    backgroundColor: Colors.black),
                onPressed: () {},
                child: Text(
                  "BORROW",
                  style: TextStyle(color: Colors.blue, letterSpacing: 1),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.3,
            child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(235, 0, 0, 0),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.3),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "USD",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
