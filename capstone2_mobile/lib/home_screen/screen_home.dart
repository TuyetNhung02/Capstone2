import 'package:capstone2_mobile/chat_screen/chat.dart';
import 'package:capstone2_mobile/router/auto_router.gr.dart';
import 'package:flutter/material.dart';
//import 'package:auto_route/auto_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ionicons/ionicons.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 2.5, 5),
                        child: build_1(),
                      )),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2.5, 5, 5, 5),
                        child: build_2(),
                      ))
                ],
              ),
              build_3(),
              build_5(),
              build_6(),
              build_9(),
              build_7(),
              build_10(),
              build_8(),
            ],
          )
          // Center(
          //   child: ElevatedButton(
          //     child: Text('Messenger'),
          //     onPressed: () => {
          //         context.pushRoute(ChatRoute()),
          //   },
          // )),
          ),
    );
  }

  Widget build_1() {
    return Container(
      color: const Color(0xFFA62823),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
              'assets/images/ico_nhaphoconline.png', // đường dẫn tới ảnh
              fit: BoxFit.cover),
          const Text(
            'Nhập học Online',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget build_2() {
    return Container(
      color: const Color(0xFFA62823),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
              'assets/images/ico_dangkyxettuyen.png', 
              fit: BoxFit.cover),
          const Text(
            'Đăng kí xét tuyển',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget build_3() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/logo-dtu.png',
            fit: BoxFit.cover,
          ),
          IconButton(
            icon: Icon(Icons.messenger),
            onPressed: () => {
               context.pushRoute(ChatRoute())
            },
          ),
        ],
      ),
    );
  }



  Widget build_5() {
    return Container(
      color: const Color(0xFF000842), // Set the background color here
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Cột 1
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/xethocba1-8647.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/xetkq-3046.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            // Cột 2
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/xettuyenthang-1899.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/xettuyendanhgianangluc-4621.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget build_6() {
    return Container(
      color: const Color(0xFFA62823),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'THÔNG TIN TUYỂN SINH 2023',
              style: TextStyle(color: Colors.yellow),
              textAlign: TextAlign.center,
            ),
            Text(
              'Điểm chuẩn Trúng tuyển vào ĐH Duy Tân đợt 1 năm 2023',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Điểm xét tuyển kết quả thi Tốt nghiệp THPT năm 2023',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Đối tượng Tuyển sinh ',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Chỉ tiêu Tuyển sinh',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Thông tin Tuyển sinh Đại học năm 2023 ',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Quy trình Đăng kí',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Thi tuyển ngành Kiến trúc',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Thủ tục Nhập học',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Chính sách Ưu tiên ',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget build_7() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'CMU - Chương trình Công Nghệ Thông tin số 1 đến từ Mỹ',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'PSU - Chương trình Tiên tiến Khối ngành Kinh tế Đẳng cấp nhất Việt Nam đến từ Mỹ',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'CSU - Chương trình Tiên tiến Xây dựng và Kiến trúc Duy nhất tại Miền Trung',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/logo-cmu-9631.png',
                  width: 70.0,
                  height: 70.0,
                ),
                Image.asset(
                  'assets/images/logo-psu-4781.png',
                  width: 70.0,
                  height: 70.0,
                ),
                Image.asset(
                  'assets/images/logo-calpoly-6031.png',
                  width: 70.0,
                  height: 70.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget build_8() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.0), // Căn lề trái 5
              child: Text(
                'Chương trình Liên kết Du học Hoa Kỳ (MC 2+2)',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0), // Căn lề trái 5
              child: Text(
                'Chương trình Liên kế Du học Sau Đại học tại Singapore',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0), // Căn lề trái 5
              child: Text(
                'Chương trình Liên kết Du học Hoa Kỳ (ASU 2+2)',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget build_9() {
    return Container(
      color: const Color(0xFFD9D9D9),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80.0, // Điều chỉnh chiều dài của đường kẻ
              child: Divider(
                height: 8.0,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                color: const Color(0xFFA62823), // Màu nền của chữ 
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'CHƯƠNG TRÌNH QUỐC TẾ',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Màu chữ 
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 80.0, // Điều chỉnh chiều dài của đường kẻ
              child: Divider(
                height: 8.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget build_10() {
    return Container(
      color: const Color(0xFFD9D9D9),
    child: Padding(
      padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50.0, // Điều chỉnh chiều dài của đường kẻ
            child: Divider(
              height: 8.0,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              color: const Color(0xFFA62823), // Màu nền của chữ 
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'DU HỌC & DU HỌC NƯỚC NGOÀI',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Màu chữ 
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 50.0, // Điều chỉnh chiều dài của đường kẻ
            child: Divider(
              height: 8.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    )
    );
  }
}


