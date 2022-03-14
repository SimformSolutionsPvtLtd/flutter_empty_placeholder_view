import 'package:example/mail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xffEE5365),
      statusBarBrightness: Brightness.dark,
    ));

    return MaterialApp(
      title: 'Empty Place Holder Demo',
      theme: ThemeData(
        primaryColor: const Color(0xffEE5366),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              onPrimary: const Color(0xffEE5366),
              secondary: Colors.amber,
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Builder(builder: (context) => const MailPage()),
        ),
      ),
    );
  }
}
