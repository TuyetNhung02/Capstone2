  import 'package:capstone2_mobile/router/auto_router.gr.dart';
  import 'package:flutter/material.dart';
  //import 'package:auto_route/auto_route.gr.dart';
  import 'package:auto_route/auto_route.dart';
  import 'package:ionicons/ionicons.dart';
  @RoutePage()
  class HistoryChatScreen extends StatefulWidget{
    const HistoryChatScreen({Key?key}) : super(key:key);

    @override
    State<HistoryChatScreen> createState() => _HistoryChatScreenState();
  }

  class _HistoryChatScreenState extends State<HistoryChatScreen>{

    @override
   Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          
          color: const Color(0xFF2C2B2D),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Column(
              children: [
                build_1(),
              ],
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: ElevatedButton(
                onPressed: () {
                  // Route nào đó
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Sign',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: -30,
              top: 0,
              child: build_2(),
            ),
          ],
        ),
      ),
    ),
  );
}


  @override
  Widget build_1() {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xFF2C2B2D),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      border: Border.all(
        color: Colors.white, // Màu của viền
        width: 2.0, // Độ rộng của viền
      ),
    ),
    constraints: BoxConstraints(maxWidth: 300.0), // Giảm chiều rộng tối đa
    padding: const EdgeInsets.all(5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Center(
            child: Text(
              'History',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Ionicons.add_outline, color: Colors.white, size: 20),
        ),
      ],
    ),
  );
}
Widget build_2() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
            Icons.backspace,
            color: Colors.white, // Thêm màu đen cho icon
          ),
          onPressed: () => {
            context.pushRoute(const ChatRoute())
          },
        ),
      ],
    ),
  );
}

  }
  

