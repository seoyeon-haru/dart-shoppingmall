import 'dart:io';

import 'package:shoppingmall/product.dart';

class Shoppingmall {
  List<Product> products = [
    Product('셔츠', 45000),
    Product('원피스', 30000),
    Product('반팔티', 35000),
    Product('반바지', 38000),
    Product('양말', 5000),
  ];
  // 장바구니 리스트 만들기
  int totalPrice = 0;

  // 장바구니에 담는 함수
  void addToCart(String name, int quantity) {
    Product? p;
    for (var i = 0; i < products.length; i++) {
      if(products[i].name == name){
        p = products [i];
      }
    }
    if(p == null){// 입력한 상품의 이름이 상품 목록에 있지 않거나 상품의 개수가 0 이하의 값이면 장바구니에 담기지 않음
       print('입력값이 올바르지 않아요! ');
    return;
    }
    totalPrice = p.price * quantity + totalPrice;
  }
  void showTotal(){
    print('상품 가격에 총 $totalPrice원이 담겨있습니다');
  }
}
