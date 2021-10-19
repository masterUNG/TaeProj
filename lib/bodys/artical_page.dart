import 'package:flutter/material.dart';
import 'package:taeproj/utility/my_constant.dart';
import 'package:taeproj/widgets/show_circular.dart';
import 'package:taeproj/widgets/show_title.dart';

class AticlePage extends StatefulWidget {
  const AticlePage({ Key? key }) : super(key: key);

  @override
  _AticlePageState createState() => _AticlePageState();
}

class _AticlePageState extends State<AticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildHead(),
    );
  }

  Container buildHead() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/header.png'), fit: BoxFit.cover),
      ),
      height: 135,
      child: ListTile(
        
        title: ShowTitle(
          title: 'บทความ',
          textStyle: MyConstant().h2StyleWhite(),
        ),
       
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bus_alert,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }








}