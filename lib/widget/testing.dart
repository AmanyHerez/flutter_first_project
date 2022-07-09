import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TestingWidget extends StatefulWidget {
  const TestingWidget({Key? key}) : super(key: key);

  @override
  _TestingWidgetState createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(top: 3),
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all( 6),
        child: Column(
          mainAxisSize:MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: const Image(
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                image: AssetImage(
                  'image/imge1.png',
                ),
              ),
            ),
            const Text('Burger'),
          ],
        ),
      ),
    );
  }
}
