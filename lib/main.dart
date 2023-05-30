import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'provider_sm/provider/auth_provider.dart';
import 'provider_sm/provider/ps1_provider.dart';
import 'provider_sm/provider/ps2_provider.dart';
import 'provider_sm/provider/ps3_provider.dart';
import 'provider_sm/provider/theme_changer_provider.dart';

import 'provider_sm/screen/auth_screen.dart';
import 'provider_sm/screen/dark_theme.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //
  bool isLoggedIn = false;

  initSharedPrefs() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
   //
   //preferences.remove('isLoggedIn');
   //
   isLoggedIn = preferences.getBool('isLoggedIn') ?? false;
    setState(() {
      
    });
  }

  @override
  void initState() {
    initSharedPrefs();
    super.initState();
  }

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
        home: isLoggedIn ? DarkTheme() : LoginScreen(),
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