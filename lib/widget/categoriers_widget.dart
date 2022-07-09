import 'package:flutter/material.dart';
class CategoriseWidget extends StatefulWidget {
  const CategoriseWidget({Key? key}) : super(key: key);

  @override
  _CategoriseWidgetState createState() => _CategoriseWidgetState();
}

class _CategoriseWidgetState extends State<CategoriseWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
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
    );
  }
}

