/*
The IoTinns Technology GSM Sytem is online single phase and 3 phase starter operating system. Technology behind this product is
GSM.
Features:
1. Alarm alert on electricity presence.
2. Alarm alert on any fault condition.
3. Voltage, current and power readings on app.
4. buttons for direct operating the system.
5. Manual operations are also inbuilt.
 */
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
//import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';
void main(){
  runApp(gsm());
}
class gsm extends StatefulWidget {
  const gsm({Key? key}) : super(key: key);

  @override
  _gsmState createState() => _gsmState();
}
class _gsmState extends State<gsm> {
  final number = '7691971623';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(number);

          },
          child: Text('Call Number'),
        ),
      ),
    );
  }
}

