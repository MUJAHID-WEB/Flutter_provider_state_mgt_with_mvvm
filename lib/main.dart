import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider_sm/provider/auth_provider.dart';
import 'provider_sm/provider/ps1_provider.dart';
import 'provider_sm/provider/ps2_provider.dart';
import 'provider_sm/provider/ps3_provider.dart';
import 'provider_sm/provider/theme_changer_provider.dart';
import 'provider_sm/screen/auth_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //
    return MultiProvider(  //////////////////
      providers: [ /////////////////////
        ChangeNotifierProvider(create: (_) => PsProvider()), ///////////////////
        ChangeNotifierProvider(create: (_) => Ps2Provider()),  ////////////////
        ChangeNotifierProvider(create: (_) => Ps3Provider()),  ////////////////
        ChangeNotifierProvider(create: (_) => ThemeChange()),  ////////////////
         ChangeNotifierProvider(create: (_) => AuthProvider()),  ////////////////
      ], /////////////
      //
     child: Builder(
      builder: (BuildContext context) { ///////////////////
        final themeChangeDL = Provider.of<ThemeChange>(context); //////////////
        //
        return    MaterialApp(
        title: 'Flutter Demo',
        //
        themeMode: themeChangeDL.themeModeDL, ////////////////////
        //
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark
        ),
        home: const LoginScreen(),
    );
     }));
     
  
    
 
  }
}
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     //
//     return MultiProvider(  //////////////////
//       providers: [ /////////////////////
//         ChangeNotifierProvider(create: (_) => PsProvider()), ///////////////////
//           ChangeNotifierProvider(create: (_) => Ps2Provider()),  ////////////////
//       ], /////////////
//       //
//      child: MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
    
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const HomePage2(),
//     ),
//     );
 
//   }
// }

//single provider
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     //
//     return ChangeNotifierProvider(
//       create: (_) => PsProvider(),
//       //
//      child: MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
    
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const HomePage(),
//     ),
//     );
 
//   }
// }