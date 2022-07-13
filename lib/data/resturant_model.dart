

class ResturantModel{
  Categories? categories;
  AllResturant? allResturant;
  ResturantModel.fromJson(Map<String,dynamic> map){
    categories= Categories.fromJson(map['categories']);
    allResturant=AllResturant.fromJson(map['allRestaurants']);
  }
}
class Categories{
  String? name;
  String? image;
  Categories.fromJson(Map<String,dynamic> map){
    name=map['name'];
    image=map['image'];
  }

}
class AllResturant{
  String? name;
  String? image;
  AllResturant.fromJson(Map<String,dynamic> map){
    name=map['name'];
    image=map['image'];
  }
}
