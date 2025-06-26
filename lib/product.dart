class Product {
  //변수 (속성)
  String name;
  int price;

  //생성자
  Product(this.name, this.price);

  //메서드 (함수)
  void printInfo() {
    print('$name / ${price}원');
  }
}