import 'package:flutter/material.dart';

import 'secondPage.dart';
import 'homepage.dart';
import 'drawerPage.dart';

void main(List<String> args) {
  runApp(petStore());
}

class petStore extends StatelessWidget {
  const petStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: drawerPage()
        
    );
  }
}
