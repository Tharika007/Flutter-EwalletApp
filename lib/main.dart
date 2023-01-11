import 'dart:html';

import 'package:ewallet/Screens/AddBank.dart';
import 'package:ewallet/Screens/AddCreditCard.dart';
import 'package:ewallet/Screens/ForgotPassword.dart';
import 'package:ewallet/Screens/PaymentDescription.dart';
import 'package:ewallet/Screens/PhoneVerification.dart';
import 'package:ewallet/Screens/SearchPeople.dart';
import 'package:ewallet/constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'Screens/WalletBalance.dart';
import 'Screens/PhoneVerification.dart';
import 'Screens/VerifyOTP.dart';
import 'Screens/PayNRequest.dart';
import 'Screens/PaymentMethod.dart';
import 'Screens/AddAmount.dart';

import 'Screens/PaymentSummery.dart';

import './Screens/Login.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MyApp(),
    enabled: !kReleaseMode,
  ),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: "SkinCardz",
      theme: ThemeData(
        primaryColor: primarywhite,
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: primarywhite),
          hintStyle: TextStyle(color: primarywhite),
        ),
      ),
      home: Description(),
    );
  }
}
