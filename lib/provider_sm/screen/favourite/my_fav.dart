// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/ps3_provider.dart';


class MyFav extends StatefulWidget {
  const MyFav({super.key});

  @override
  State<MyFav> createState() => _MyFavState();
}

class _MyFavState extends State<MyFav> {
//
// List<int> selectedItem = [];

//
  @override
  Widget build(BuildContext context) {
    //
   final favProvider = Provider.of<Ps3Provider>(context); /////////
print('build');
    //
    return  Scaffold(
      appBar: AppBar(title: Text('PS3')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          Expanded(
            child: 
            ListView.builder(
              //
              itemCount: favProvider.val.length, /////////////////////
              //
              itemBuilder: (contex, index){
                return Consumer<Ps3Provider>(builder: (context, value, child){  //////////////
              print('only this widget 01');
              return 
                ListTile(
          
                  title: Text('data '+index.toString()),
                  trailing: Icon(
                    //
                    value.val.contains(index) ///////////
                    //
                    ? Icons.favorite_border_outlined 
                    : Icons.favorite,
                    ),
                  //
                  onTap: () {
                    // if(value.val.contains(index)){
                    //   value.removeItem(index); ////////////////
                    // }else{
                    //    value.addItem(index); ////////////////
                    // }
                    //
                    value.removeItem(index); ////////////////
                
                  },
                );
            });
  },),
          )
 
        ],
      ),
    
    );
  }
} 