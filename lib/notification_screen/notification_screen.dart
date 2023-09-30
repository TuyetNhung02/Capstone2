import 'package:flutter/material.dart';
//import 'package:auto_route/auto_route.gr.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class NotificationScreen extends StatefulWidget{
  const NotificationScreen({Key?key}) : super(key:key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>{

  @override
  Widget build(BuildContext context){

    return Text('Notification');
  }
}