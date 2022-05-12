import 'package:direqpay/SnWbutton.dart';
import 'package:flutter/material.dart';
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
runApp(Sendpopup());
}

class Sendpopup extends StatefulWidget {
  const Sendpopup({ Key? key }) : super(key: key);
  @override
  State<Sendpopup> createState() => _SendpopupState();
}
class _SendpopupState extends State<Sendpopup> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)),
                            side: BorderSide(color: Colors.purple)),
                        backgroundColor: Color.fromARGB(220, 0, 0, 0),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              children: [
                                TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 1.3),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blue, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      hintText: "Enter Amount",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    )),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          showCountryPicker(
                                            context: context,
                                            //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                                            exclude: <String>['KN', 'MF'],
                                            favorite: <String>['SE'],
                                            //Optional. Shows phone code before the country name.
                                            showPhoneCode: false,

                                            onSelect: (country) {
                                              setState(() {
                                                countryselected = country.name;
                                              });
                                              print(
                                                  'Select country: ${country.displayName}');
                                            },
                                            // Optional. Sets the theme for the country list picker.
                                            countryListTheme:
                                                CountryListThemeData(
                                              // Optional. Sets the border radius for the bottomsheet.
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                              ),
                                              // Optional. Styles the search field.
                                              inputDecoration: InputDecoration(
                                                labelText: 'Search',
                                                hintText:
                                                    'Start typing to search',
                                                prefixIcon:
                                                    const Icon(Icons.search),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                        const Color(0xFF8C98A8)
                                                            .withOpacity(0.2),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "${countryselected}",
                                          style:
                                              TextStyle(color: Colors.yellow),
                                        ),
                                        style: TextButton.styleFrom(
                                            side: BorderSide(
                                                color: Colors.yellow,
                                                width: 0.5))),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "RECEIVER",
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              letterSpacing: 0.5),
                                        ),
                                        style: TextButton.styleFrom(
                                            side: BorderSide(
                                                color: Colors.yellow,
                                                width: 0.5)))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("CONFIRM",
                                style: TextStyle(
                                  color: Colors.green,
                                  letterSpacing: 0.5,
                                )),
                            style: TextButton.styleFrom(
                                side:
                                    BorderSide(color: Colors.green, width: 1)),
                          ),
                        ],
                      );
  }
}