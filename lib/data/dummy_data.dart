import 'package:flutter_fist_project_gsg/data/resturant_model.dart';

List<Map<String, dynamic>> resturantResponse = [
  {
    'categories': {
      'name': 'Burger',
      'image':
          'https://st3.depositphotos.com/1000504/19178/i/1600/depositphotos_191783046-stock-photo-fresh-tasty-burger.jpg'
    },
    'allRestaurants': {
      'name': 'Mc Donald\'s',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/McDonald%27s_logo.svg/2560px-McDonald%27s_logo.svg.png'
    }
  },
  {
    'categories': {
      'name': 'Biriyani',
      'image':
          'https://thumbs.dreamstime.com/b/hyderabadi-chicken-biryani-38473399.jpg'
    },
    'allRestaurants': {
      'name': 'Starbuks',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOW-1iDN717g4XLC-a7xtVIn7XQ2ZMve87AA&usqp=CAU',
    }
  },
  {
    'categories': {
      'name': 'indian',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcFbnJxUAH4T00iZUmdAenJ775LhZPbK96tA&usqp=CAU'
    },
    'allRestaurants': {
      'name': 'Dominos',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/McDonald%27s_logo.svg/2560px-McDonald%27s_logo.svg.png'
    }
  },
  {
    'categories': {
      'name': 'Thai',
      'image':
          'https://thumbs.dreamstime.com/b/thai-northeast-food-style-original-19950352.jpg'
    },
    'allRestaurants': {
      'name': 'Dominos',
      'image':
          'https://www.bleepstatic.com/content/hl-images/2021/05/25/dominos.jpg'
    }
  },
  {
    'categories': {
      'name': 'Dessert',
      'image':
          'data:image/jpeg;base64,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'
    },
    'allRestaurants': {
      'name': 'Mc Donald\'s',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/McDonald%27s_logo.svg/2560px-McDonald%27s_logo.svg.png'
    }
  },
  {
    'categories': {
      'name': 'Pasta',
      'image':
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/one-pan-puttanesca-d-1620731704.jpg?crop=1.00xw:1.00xh;0,0&resize=640:*'
    },
    'allRestaurants': {
      'name': 'Starbuks',
      'image':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOW-1iDN717g4XLC-a7xtVIn7XQ2ZMve87AA&usqp=CAU',
    }
  },
  {
    'categories': {
      'name': 'Pizza',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSVz2YI6MRvgUqi4Yh-S_DlXI0qnh-dm1s7Q&usqp=CAU'
    },
    'allRestaurants': {
      'name': 'Mc Donald\'s',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/McDonald%27s_logo.svg/2560px-McDonald%27s_logo.svg.png'
    }
  },
  {
    'categories': {
      'name': 'Snaks',
      'image':
          'https://thumbs.dreamstime.com/b/pub-menu-snack-meat-group-friends-tasty-delicious-snacks-restaurant-food-beer-wooden-board-french-fries-fish-sticks-burrito-138740249.jpg'
    },
    'allRestaurants': {
      'name': 'Dominos',
      'image':
          'https://www.bleepstatic.com/content/hl-images/2021/05/25/dominos.jpg'
    }
  },
];
List<ResturantModel> resturant =
    resturantResponse.map((e) => ResturantModel.fromJson(e)).toList();
