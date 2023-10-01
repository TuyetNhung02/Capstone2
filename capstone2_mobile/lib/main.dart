  import 'package:capstone2_mobile/router/auto_router.dart';
import 'package:flutter/material.dart';

  void main() async{
    runApp(MyApp());
  }

  class MyApp extends StatefulWidget{
    const MyApp({super.key});
    @override
    State<MyApp> createState() => _MyAppState();
    
  }

  class _MyAppState extends State<MyApp>{

    final _appRouter = AppRouter();

    @override
    Widget build(BuildContext context){
      return MaterialApp.router(
        title:'',
        theme: ThemeData(
          primaryColor: Colors.white,
          brightness: Brightness.light,
          fontFamily: 'Roboto',
          cardTheme: CardTheme(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.white60,
          )
        ),
        routerConfig: _appRouter.config(),
      );
    }
  }