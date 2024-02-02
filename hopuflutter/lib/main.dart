import 'package:flutter/material.dart';
import 'package:hopuflutter/screens/artist_screen.dart';
import 'package:hopuflutter/screens/contact_screen.dart';
import 'package:hopuflutter/screens/event_screen.dart';
import 'package:hopuflutter/screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'model.dart/provider.dart';
import 'routes.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => PageProvider(),
        child: MyApp(),
      ),
    );


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ho-Pu',
      initialRoute: Routes.home,
      routes: {
        
         Routes.home: (context) {
          Provider.of<PageProvider>(context, listen: false).setCurrentPage('home');
          return HomeScreen();
        },
        
        Routes.artists: (context) {
          Provider.of<PageProvider>(context, listen: false).setCurrentPage('artists');
          return ArtistScreen();
        },
        Routes.events: (context) {
          Provider.of<PageProvider>(context, listen: false).setCurrentPage('events');
          return EventScreen();
        },
        Routes.contact: (context) {
          Provider.of<PageProvider>(context, listen: false).setCurrentPage('contact');
          return ContactScreen();
        },
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        fontFamily: 'Montserrat',
        useMaterial3: true,
      ),
      
    );
  }
}

