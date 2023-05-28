// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/ps2_provider.dart';


class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
//
//double val = 1;

//
  @override
  Widget build(BuildContext context) {

    //
    return  Scaffold(
      appBar: AppBar(title: Text('PS1')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          Consumer<Ps2Provider>(builder: (context, value, child){  //////////////
              //print('only this widget 01');
              return 
         Slider(
          min: 0,
          max: 1,
          value: value.val, /////////////////
          onChanged: (newVal){ /////////////////
          //
            value.setVal(newVal);  /////////////////////
         
         }, 
         
         );
          }),
          //
          Consumer<Ps2Provider>(builder: (context, value, child){   //////////////////
          //print('only this widget 02');
         return Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(value.val) ///////////////////////
                ),
                child: Center(child: Text('01')),
              ),
            ),

          //

           Expanded(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(value.val)  /////////////////////////
                ),
                child: Center(child: Text('02')),
              ),
            )
          ],
         );
          }),
          
        ],
      ),
    
    );
  }
} 