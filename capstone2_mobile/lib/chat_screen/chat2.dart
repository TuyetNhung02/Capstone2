  import 'package:flutter/material.dart';
  //import 'package:auto_route/auto_route.gr.dart';
  import 'package:auto_route/auto_route.dart';

  @RoutePage()
  class HistoryChatScreen extends StatefulWidget{
    const HistoryChatScreen({Key?key}) : super(key:key);

    @override
    State<HistoryChatScreen> createState() => _HistoryChatScreenState();
  }

  class _HistoryChatScreenState extends State<HistoryChatScreen>{

    @override
    Widget build(BuildContext context){
      
      return Text('Chat1');
      
    }
  }

