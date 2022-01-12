import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum FlavorEnum { bat, owl, spider }

class AppWidget extends StatelessWidget {
  final String flavor;

  const AppWidget({
    Key? key,
    required this.flavor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flavors',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('$flavor app')),
        ),
        body: Center(
          child: SvgPicture.asset(
            'assets/svg/$flavor.svg',
            height: 100,
          ),
        ),
      ),
    );
  }
}
