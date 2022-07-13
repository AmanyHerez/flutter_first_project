class ResturantModel{
  Categories? categories;
  ResturantModel.fromJson(Map<String,dynamic> map){
    categories= Categories.fromJson(map['categories']);
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
