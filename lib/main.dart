import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacex_graphql/graphql_provider.dart';
import 'package:spacex_graphql/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphqlProvider(
      uri: "https://api.spacex.land/graphql/",
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SpaceX Launches',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.hindMaduraiTextTheme(
            Theme.of(context).textTheme,
          )
        ),
        home: HomePage(),
      ),
    );
  }
}
