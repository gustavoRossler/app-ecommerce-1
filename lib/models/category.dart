class Category {
  String id;
  int numOfProducts;
  String title;
  String image;

  Category({this.id, this.numOfProducts, this.title, this.image});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    numOfProducts = json['numOfProducts'];
    title = json['title'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['numOfProducts'] = this.numOfProducts;
    data['title'] = this.title;
    data['image'] = this.image;
    return data;
  }
}

// Demo category
Category category = Category(
  id: '1',
  title: 'Armchair',
  image: 'https://i.imgur.com/JqKDdxj.png',
  numOfProducts: 100,
);
