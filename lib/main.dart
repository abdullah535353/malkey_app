import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:malkey/theme/theme_data.dart';
import 'package:malkey/ui/views/home/home.dart';
import 'package:malkey/utils/translation_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ui/views/call_us/call_us.dart';
import 'ui/views/settings/settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString("lang","ar");
  Locale locale = Locale(pref.getString("lang"), "");
  runApp(
    MyApp(locale: locale,),
    );
}

class MyApp extends StatefulWidget {
  final Locale locale;
  MyApp({this.locale});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: null,
        builder: (context, snapshot) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Malkey',
            theme: themeData(),
            home: CallUs(),
            //language Settings of all App
            localizationsDelegates: [
              AppLocal.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [
              Locale("ar",""),
              Locale("en",""),
            ],
            locale: widget.locale,
            localeResolutionCallback: (currentLocale, supportedLocales) {
              print(currentLocale);
              if (currentLocale != null) {
                for (Locale locale in supportedLocales) {
                  if (currentLocale.languageCode == locale.languageCode) {
                    return currentLocale;
                  }
                }
              }
              return supportedLocales.first;
            },
          );
        },);
  }
}
