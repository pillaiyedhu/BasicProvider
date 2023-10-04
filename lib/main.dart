import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sept13_provider_try/providers/EligibleProvider.dart';
import 'package:sept13_provider_try/screens/EligibleApp.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return EligibleProvider();
      },
      child: MyApp(),
    )
    
  );
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home:EligibleApp()
    );
  }
}