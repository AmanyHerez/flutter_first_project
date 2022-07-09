import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PopularFoodNearbyWidget extends StatelessWidget {
  const PopularFoodNearbyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //color: Colors.white,
        //width: 300,
        Row(
      children: [
        Container(
          width: 100,
          height: 115,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'image/imge1.png',
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0.0, 2.0),blurRadius: 5,
                color: Colors.grey,
              ),
              BoxShadow(
                offset: Offset(2.0, 0.0),blurRadius: 5,
                color: Colors.grey,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  'Burger',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              const Text(
                '76A eight evenue, New York ,US',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                itemSize: 20,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('\$5'),
                  SizedBox(
                    width: 120,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
