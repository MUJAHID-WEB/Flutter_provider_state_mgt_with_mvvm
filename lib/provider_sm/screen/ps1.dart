import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/ps1_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//
//int count = 0;
@override
  void initState() {
    super.initState();
    //
    final psProvider = Provider.of<PsProvider>(context, listen: false); ///////////
    Timer.periodic(Duration(seconds: 1), (timer) { 
      //
     psProvider.setCount(); //////////////
    });
  }
//
  @override
  Widget build(BuildContext context) {
    //
    // final psProvider = Provider.of<PsProvider>(context, listen: false); /////////// if use floating action button
    //
    print('whole screen');
    return  Scaffold(
      appBar: AppBar(title: Text('PS1')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            //
            child: Consumer<PsProvider>(builder: (context, value, child){
              //print('only this widget');
              return Text(
              //
              value.count.toString(), ///////////
              //
          style: TextStyle(fontSize: 30),);
            })
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //   psProvider.setCount(); //////////////// 
      // }),
    );
  }
} 