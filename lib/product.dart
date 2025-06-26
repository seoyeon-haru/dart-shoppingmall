class Product {
  //변수 (속성)
  String name;
  int price;

  //생성자
  Product(this.name, this.price);

  //메서드 (함수)
  List<Product> products = [
    Product('셔츠', 45000),
    Product('원피스', 30000),
    Product('반팔티', 35000),
    Product('반바지', 38000),
    Product('양말', 5000),
  ];
}