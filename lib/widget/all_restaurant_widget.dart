import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fist_project_gsg/data/resturant_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AllResturantWidget extends StatelessWidget {
  AllResturant? allResturant;

  AllResturantWidget({required this.allResturant});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: allResturant!.image ?? 'not defined',
            fit: BoxFit.cover,
            width: 120,
            height: 90,
          ),
          // Image(
          //   width: 120,
          //   height: 100,
          //   fit: BoxFit.cover,
          //   image: AssetImage(
          //     'image/imge1.png',
          //   ),
          // ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                allResturant!.name ?? " not define",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'American cuiane',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Text(
                'Fast food',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 15,
                itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
        ),
        Spacer(),
        Icon(
          Icons.favorite_border_outlined,
          color: Colors.grey,
        ),
      ],
    );
  }
}
