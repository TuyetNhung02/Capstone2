import 'package:flutter/material.dart';
//import 'package:auto_route/auto_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ionicons/ionicons.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: const IconThemeData(
        color: Colors.black, // màu biểu tượng (icon)
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: const InputDecoration.collapsed(
                  hintText: 'Send a message',
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textController.text),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Đại học Duy Tân',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0, // Kích thước chữ
                    ),
                  ),
                  TextSpan(
                    text:
                        '\nTuyển sinh ĐH Duy Tân chào bạn! Bạn có thắc mắc gì đừng ngại đặt câu hỏi trường giải đáp nhé',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0, // Kích thước chữ
                    ),
                  ),
                ],
              ),
            ),
          ),
          centerTitle: true, // Căn giữa tiêu đề
          backgroundColor: const Color(0xFFA62823)),
      bottomNavigationBar: Container(
        height: size.height / 19,
        color: const Color(0xFFA62823),
        padding: const EdgeInsets.all(5),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'Chatbot DTU September 19  version 1',
              style: TextStyle(
                fontSize: 13.0, // Kích thước chữ
                color: Colors.black, // Màu chữ
              ),
            ),
            Text(
              'Copyright 2023 © Bản quyền thuộc về Đại học Duy Tân',
              style: TextStyle(
                fontSize: 13.0, // Kích thước chữ
                color: Colors.black, // Màu chữ
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white, // màu nền
      body: Column(
        children: <Widget>[
          build_1(),
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          const Divider(height: 1.0),
          _buildTextComposer(),
        ],
      ),
    );
  }

//thanh dưới ĐH DTU
  Widget build_1() {
    return Container(
      color: const Color(0xFF2C2B2D),
      padding: const EdgeInsets.all(5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(Ionicons.list_outline,color: Colors.white,size: 20,)
            ),
          
          Expanded(
              child: Center(
            child: Text(
              'New Chat',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          )),
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Ionicons.add_outline,color: Colors.white,size: 20,)
            ),
            
          
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const CircleAvatar(
              child: Text('User'),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'User',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white, // Màu chữ
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}