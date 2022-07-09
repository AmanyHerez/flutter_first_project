import 'package:flutter/material.dart';
class ContentPageView extends StatelessWidget {
  const ContentPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image(
          width: double.infinity,
          fit: BoxFit.cover,
          image: AssetImage("image/imge1.png"),
        ),
      ),
    );
  }
}
