class Product {
  String id;
  int price;
  String title;
  String category;
  String image;
  String subTitle;
  String description;

  Product(
      {this.id,
      this.price,
      this.title,
      this.category,
      this.image,
      this.subTitle,
      this.description});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    title = json['title'];
    category = json['category'];
    image = json['image'];
    subTitle = json['subTitle'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['title'] = this.title;
    data['category'] = this.category;
    data['image'] = this.image;
    data['subTitle'] = this.subTitle;
    data['description'] = this.description;
    return data;
  }
}

// Demo Product
Product product = Product(
  id: '1',
  price: 1600,
  title: 'Wood Frame',
  image: 'https://i.imgur.com/sI4GvE6.png',
  category: 'Chair',
  subTitle: 'Tieton Armchair',
  description: description,
);

String description =
    'This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.';
