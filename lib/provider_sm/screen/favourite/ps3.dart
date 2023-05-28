// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/ps3_provider.dart';
import 'my_fav.dart';


class HomePage3 extends StatefulWidget {
  const HomePage3({super.key});

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
//
// List<int> selectedItem = [];

//
  @override
  Widget build(BuildContext context) {
   // final itemProvider = Provider.of<Ps3Provider>(context); /////////
print('build');
    //
    return  Scaffold(
      appBar: AppBar(
        title: Text('PS3'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyFav()));
            },
            child: Icon(Icons.favorite))
        ],
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          Expanded(
            child: 
            ListView.builder(
              itemCount: 10,
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
                    ? Icons.favorite 
                    : Icons.favorite_border_outlined,
                    ),
                  //
                  onTap: () {
                    if(value.val.contains(index)){
                      value.removeItem(index); ////////////////
                    }else{
                      value.addItem(index); ////////////////
                    }
                    //
                    
                
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


//
// class HomePage3 extends StatefulWidget {
//   const HomePage3({super.key});

//   @override
//   State<HomePage3> createState() => _HomePage3State();
// }

// class _HomePage3State extends State<HomePage3> {
// //
// List<int> selectedItem = [];

// //
//   @override
//   Widget build(BuildContext context) {
// print('build');
//     //
//     return  Scaffold(
//       appBar: AppBar(title: Text('PS3')),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           //
//           Expanded(
//             child: ListView.builder(
//               itemCount: 10,
//               itemBuilder: (contex, index){
//                 return ListTile(
          
//                   title: Text('data '+index.toString()),
//                   trailing: Icon(
//                     //
//                     selectedItem.contains(index) 
//                     //
//                     ? Icons.favorite 
//                     : Icons.favorite_border_outlined,
//                     ),
//                   //
//                   onTap: () {
//                     //
//                     selectedItem.add(index);
//                     setState(() {
                      
//                     });
//                   },
//                 );
//             }),
//           )
 
//         ],
//       ),
    
//     );
//   }
// } 