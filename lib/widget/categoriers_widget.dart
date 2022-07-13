import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fist_project_gsg/data/resturant_model.dart';

class CategoriseWidget extends StatefulWidget {

   Categories? categories;

   CategoriseWidget({required this.categories});

  @override
  _CategoriseWidgetState createState() => _CategoriseWidgetState();
}

class _CategoriseWidgetState extends State<CategoriseWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child:  CachedNetworkImage(imageUrl:widget.categories!.image ?? 'not defined',fit: BoxFit.cover,width: 60,height: 60, ),
            // Image(
            //   width: 60,
            //   height: 60,
            //   fit: BoxFit.cover,
            //   image: NetworkImage(
            //     widget.categories!.image ?? 'not defined',
            //   ),
            // ),
          ),
          //const Text('Burger'),
          Text( widget.categories!.name ?? 'not defined'),
        ],
      ),
    );
  }
}
