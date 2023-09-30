import 'package:app/router/auto_router.gr.dart';
import 'package:flutter/material.dart';
//import 'package:auto_route/auto_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ionicons/ionicons.dart';

@RoutePage()
class HomeScreen extends StatefulWidget{
  const HomeScreen({Key?key}) : super(key:key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context){

    return SafeArea(
      child: Scaffold(
        body: Center(child: ElevatedButton(
          child: Text('Messenger'),
          onPressed: () => {
            context.pushRoute(ChatRoute()),
          },
        )),
      ),
    );
  }
   

   Widget build_1(BuildContext context) {
    return Container(
      color: const Color(0xFFA62823),
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'D:\CAPSTONE\ima\ico_nhaphoconline.png', // đường dẫn tới ảnh
            width: 100.0,
            height: 100.0,
          ),
          Text(
            'Nhập học Online',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, 
            ),
          ),
        ],
      ),
    );
  }

  Widget build_2(BuildContext context) {
    return Container(
      color: const Color(0xFFA62823),
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'D:\CAPSTONE\ima\ico_dangkyxettuyen.png', // đường dẫn tới ảnh
            width: 100.0,
            height: 100.0,
          ),
          Text(
            'Đăng kí xét tuyển',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, 
            ),
          ),
        ],
      ),
    );
  }


  Widget build_3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Hình ảnh bên trái
          Image.asset(
            'assets/left_image.png',
            width: 100.0,
            height: 100.0,
          ),
          // Khoảng trắng
          SizedBox(width: 16.0),
        ],
      ),
    );
  }

  Widget build_4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Hình ảnh bên trái
          Image.asset(
            'assets/left_image.png',
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    );
  }



  Widget build_5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Cột 1
          Column(
            children: [
              Image.asset(
                'D:\CAPSTONE\ima\xethocba1-8647.png',
                width: 100.0,
                height: 100.0,
              ),
              Image.asset(
                'D:\CAPSTONE\ima\xetkq-3046.png',
                width: 100.0,
                height: 100.0,
              ),
            ],
          ),
          // Cột 2
          Column(
            children: [
              Image.asset(
                'D:\CAPSTONE\ima\xettuyenthang-1899.png',
                width: 100.0,
                height: 100.0,
              ),
              Image.asset(
                'D:\CAPSTONE\ima\xettuyendanhgianangluc-4621.png',
                width: 100.0,
                height: 100.0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget build_7(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Dòng 1:'),
          Text('Dòng 2: '),
          Text('Dòng 3: '),
          Text('Dòng 4: '),
          Text('Dòng 5: '),
          Text('Dòng 6: '),
          Text('Dòng 7: '),
          Text('Dòng 8: '),
          Text('Dòng 9: '),
          Text('Dòng 10: '),
        ],
      ),
    );
  }

  Widget build_8(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dòng chữ: ...',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/image1.png',
                width: 80.0,
                height: 80.0,
              ),
              Image.asset(
                'assets/image2.png',
                width: 80.0,
                height: 80.0,
              ),
              Image.asset(
                'assets/image3.png',
                width: 80.0,
                height: 80.0,
              ),
            ],
          ),
        ],
      ),
    );
  }



}