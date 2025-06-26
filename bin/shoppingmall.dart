import 'dart:io';

import 'package:shoppingmall/shopping_mall.dart';

void main() {
  Shoppingmall mall = Shoppingmall();
  while (true) {
    print('-' * 100);
    print('[1] 상품 목록 보기 [2] 장바구니에 담기 [3] 장바구니에 담긴 상품의 총 가격 보기 [4] 프로그램 종료');
    print('-' * 100);
    String? userInput = stdin.readLineSync();
    print(userInput);
    if (userInput == '1') { //1을 입력했을 때 판매하는 상품 리스트 출력
      print('[상품 목록]');
      for (var product in mall.products) {
        print('${product.name} / ${product.price}원');
      }
    } else if (userInput == '2') { // 구매자가 구매하고 싶은 상품들을 장바구니에 담을 수 있는 기능
      print('상품명을 입력해주세요.');// 2를 입력했을 대 장바구니에 담을 상품 이름(String)과 상품 개수(int)를 입력
      String? userInputProduct = stdin.readLineSync();
      if (userInputProduct == null) {
        continue;
      }
      print('수량을 입력해주세요.');
      String? userInputQty = stdin.readLineSync();
      if (userInputQty == null) {
        continue;
      }
      int? qty =int.tryParse(userInputQty); // int.parse()를 통해 입력한 상품의 개수를 int 타입으로 변환할 수 있음
      if(qty == null) {
        print('올바른 수량을 입력해주세요');
        continue;
      }
      mall.addToCart(userInputProduct, qty);
    } else if (userInput == '3') { // 3을 입력했을 때 구매자가 장바구니에 담은 상품들의 총 가격(int)을 계산하여 출력
      mall.showTotal(); // 장바구니에 [가격]원 어치를 담으셨네요 ! 출력
    } else if (userInput == '4') { // 4를 입력했을 때 쇼핑몰 프로그램이 종료됨
      print('정말 종료하시겠습니까?'); // 이용해 주셔서 감사합니다~ 안녕히 가세요! 출력 후 프로그램 종료
      String? userInput = stdin.readLineSync();
      if (userInput == '5') {
       print('이용해 주셔서 감사합니다~ 안녕히 가세요!'); 
       return;       
      } else {
        print('종료하지 않습니다');
        continue;
      }
    } else {
      print('올바른 값을 입력해주세요');
    }
  }
}
