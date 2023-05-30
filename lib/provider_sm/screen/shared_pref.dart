
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  const SharedPref({super.key});

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  //
  //int counter = 0;
  // late int counter;
  // late double lucky_number;
  // String name = '';
  // bool isLogin = false;

  increment() async{  // set in button
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
     // counter++;
      pref.setInt('count', 32);
      //
      pref.setDouble('lucky number', 23.40);
      pref.setString('Name', 'Mujahid Islam');
      pref.setBool('isLogin', false);
    });
  }

  // loadcounter ()async{  //set in initState
  // SharedPreferences pref = await SharedPreferences.getInstance();
  // setState(() {
  //   counter = pref.getInt('count') ?? 0 ;
  //   //
  //   lucky_number = pref.getDouble('lucky number') ?? 0 ;
  //   name = pref.getString('Name') ?? '';
  //   isLogin = pref.getBool('isLogin') ?? false;
  // });
  // }

  @override
  void initState() {
   // loadcounter();
    super.initState();
  }
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          // Text('clicked $counter times'),
          // Text(lucky_number.toString()),
          // Text(name.toString()),
          // Text(isLogin.toString()),

          //

          FutureBuilder(
            future: SharedPreferences.getInstance(),
            builder: (context, AsyncSnapshot<SharedPreferences> snapshot){
              return Column(
                children: [
                  Text(snapshot.data!.getString('Name') ?? ''),
                  Text(snapshot.data!.getDouble('lucky number')?.toString() ?? ''),
                ],
              );
            })
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: increment,),
    );
  }
}

// by chatGPT

// class SharedPref extends StatefulWidget {
//   const SharedPref({Key? key}) : super(key: key);

//   @override
//   State<SharedPref> createState() => _SharedPrefState();
// }

// class _SharedPrefState extends State<SharedPref> {
//   late SharedPreferences _prefs;

//   @override
//   void initState() {
//     super.initState();
//     _loadSharedPreferences();
//   }

//   Future<void> _loadSharedPreferences() async {
//     _prefs = await SharedPreferences.getInstance();
//     print (_pref.get('Name'));
//     // Refresh the state to update the displayed values
//     setState(() {});
//   }

//   void increment() {
//     setState(() {
//       _prefs.setInt('count', 32);
//       _prefs.setDouble('lucky number', 23.32);
//       _prefs.setString('Name', 'Mujahid');
//       _prefs.setBool('isLogin', false);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             FutureBuilder<SharedPreferences>(
//               future: SharedPreferences.getInstance(),
//               builder: (context, snapshot) {
//                 if (snapshot.hasData) {
//                   return Column(
//                     children: [
//                       Text(snapshot.data!.getString('Name') ?? ''),
//                       Text(snapshot.data!.getDouble('lucky number')?.toString() ?? ''),
//                     ],
//                   );
//                 } else if (snapshot.hasError) {
//                   return Text('Error: ${snapshot.error}');
//                 }
//                 // Display a loading indicator while waiting for SharedPreferences
//                 return CircularProgressIndicator();
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: increment,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
