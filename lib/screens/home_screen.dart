import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController _textEditingController = TextEditingController();
  String _textHeader = "あなたの名前を教えてください";
  Widget _imageWidget = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("はじめてのアプリ"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(child: Text(_textHeader, style: TextStyle(fontSize: 20.0),)),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller: _textEditingController,
            ),
            Expanded(child: _imageWidget),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(onPressed: () => _onClick(),
                child: Text("ボタン", style: TextStyle(fontSize: 18.0),),
              ),
            )

          ],
        ),
      ),

    );
  }

  _onClick() {
    setState(() {
      //文字
      var _inputText = _textEditingController.text;
      _textHeader = "こんにちは！　$_inputTextさん！";

      //画像
      // _imageWidget = Image.asset("assets/images/hello.png");
      _imageWidget = Image.network("https://i.pinimg.com/originals/74/22/b4/7422b48ddd45fa1e56a69c4ddde8d2bd.jpg");
    });


  }
}
