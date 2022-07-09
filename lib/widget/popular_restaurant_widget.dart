import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PopularRestaurantsWidget extends StatelessWidget {
  const PopularRestaurantsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(

          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),

            ),
            image: DecorationImage(
              image: AssetImage(
                'image/imge1.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '10% discard',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Image.asset(
                  'image/love.jpg',
                  width: 40,
                  height: 40,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 500,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey,offset: Offset(1.0, 0.0),blurRadius: 2),
              BoxShadow(color: Colors.grey,offset: Offset(-2.0, 0.0),blurRadius: 5),
            ],
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),

            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3,),
                child: Text(
                  'Hungry Puppets',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3,),
                child: Text(
                  '76A eight evenue, New York ,US',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3,),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      itemSize: 25,
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
                    Text('(2)'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

