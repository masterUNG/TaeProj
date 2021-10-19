import 'package:flutter/material.dart';
import 'package:taeproj/utility/my_constant.dart';
import 'package:taeproj/widgets/show_title.dart';

class ShowTitleHead extends StatelessWidget {
  final String title;
  final String pathIcon;
  const ShowTitleHead({Key? key, required this.title, required this.pathIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Container(width: 24,height: 24,
              child: Image.asset(pathIcon),
            ),
            const SizedBox(
              width: 16,
            ),
            ShowTitle(
              title: title,
              textStyle: MyConstant().h1StyleBlue(),
            ),
          ],
        ),
      );
}
