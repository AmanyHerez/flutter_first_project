import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class CampaignsWidget extends StatefulWidget {
  const CampaignsWidget({Key? key}) : super(key: key);

  @override
  _CampaignsWidgetState createState() => _CampaignsWidgetState();
}

class _CampaignsWidgetState extends State<CampaignsWidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          //width: 400,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),

            ),
            image: DecorationImage(
              image: AssetImage(
                'image/imge1.png',
              ),
              fit: BoxFit.cover,
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
                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3,),
                child: Text(
                  'Friday blasst',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3,),
                child: Text(
                  '76A eight evenue, New York ,US',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3,),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      " 5 ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 1,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text('4.9'),
                    ),
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
