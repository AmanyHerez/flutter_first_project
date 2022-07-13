import 'package:flutter/material.dart';
import 'package:flutter_fist_project_gsg/data/dummy_data.dart';
import 'package:flutter_fist_project_gsg/model/bn_screen.dart';
import 'package:flutter_fist_project_gsg/save_screen.dart';
import 'package:flutter_fist_project_gsg/shope_screen.dart';
import 'package:flutter_fist_project_gsg/widget/all_restaurant_widget.dart';
import 'package:flutter_fist_project_gsg/widget/campaigns_widget.dart';
import 'package:flutter_fist_project_gsg/widget/categoriers_widget.dart';
import 'package:flutter_fist_project_gsg/widget/content_pageview.dart';
import 'package:flutter_fist_project_gsg/widget/indecator.dart';
import 'package:flutter_fist_project_gsg/widget/popular_food_nearby_widget.dart';
import 'package:flutter_fist_project_gsg/widget/popular_restaurant_widget.dart';
import 'package:flutter_fist_project_gsg/widget/testing.dart';

import 'faviraute_screen.dart';
import 'menu_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.orange.shade400,
                ),
                labelText: 'search your desiered foods or restaurent',
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                onPageChanged: (int value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                children: [
                  ContentPageView(),
                  ContentPageView(),
                  ContentPageView(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Indecator(selected: _currentPage == 0),
                Indecator(selected: _currentPage == 1),
                Indecator(selected: _currentPage == 2),
              ],
            ),
            Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount: resturant.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoriseWidget(
                    categories: resturant[index].categories,
                  );
                },
              ),
            ),
            Row(
              children: [
                Text(
                  'Popular Restaurants',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 210,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 8, mainAxisExtent: 280),
                children: [
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Campaigns',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 220,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 8, mainAxisExtent: 280),
                children: [
                  CampaignsWidget(),
                  CampaignsWidget(),
                  CampaignsWidget(),
                  CampaignsWidget(),
                  CampaignsWidget(),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Popular Food Nearby',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 115,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  PopularFoodNearbyWidget(),
                  SizedBox(
                    width: 10,
                  ),
                  PopularFoodNearbyWidget(),
                  SizedBox(
                    width: 10,
                  ),
                  PopularFoodNearbyWidget(),
                  SizedBox(
                    width: 10,
                  ),
                  PopularFoodNearbyWidget(),
                  SizedBox(
                    width: 10,
                  ),
                  PopularFoodNearbyWidget(),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'New on Stackfood',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 215,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 280),
                children: [
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                  PopularRestaurantsWidget(),
                ],
              ),
            ),
            Row(
              children: [
                const Text(
                  'All Restaurants',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return AllResturantWidget();
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    indent: 5,
                    endIndent: 5,
                    color: Colors.grey,
                    height: 15,
                  );
                },
                itemCount: 5)
          ],
        ),
      ),
    );
  }
}
