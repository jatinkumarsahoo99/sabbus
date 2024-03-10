// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sabbus/MainClass.dart';
import 'package:sabbus/themes/theme_provider.dart';
import 'package:sabbus/themes/themes.dart';

import 'modules/login/LoginPage.dart';

import "package:http/io_client.dart";

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = ((X509Certificate cert, String host, int port) {
        final isValidHost = ["https://www.nandighoshatvlive.com/hls/stream/index.m3u8"].contains(host); // <-- allow only hosts in array
        return isValidHost;
      });
  }
}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global =  MyHttpOverrides();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(_setAllProviders()));
}

Widget _setAllProviders() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(
          state: AppTheme.getThemeData,
        ),
      ),
    ],
    child: MainClass(),
  );
}


