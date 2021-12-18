import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("直播"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Image.asset("assets/images/loading/loding_00000.webp",gaplessPlayback: true,),
      ),
    );
  }
}
