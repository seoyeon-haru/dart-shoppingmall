## 💜Dart 콘솔 쇼핑몰
### 💜프로젝트 소개
##### ✏️ 상품 목록을 보고 원하는 상품을 입력하여 장바구니에 담을 수 있으며 장바구니 총 가격을 볼 수 있다.

---
### 💜 주요 기능
 ##### ✏️ 상품 목록 조회: 1을 입력 시 상품 이름과 가격을 확인 
 #####  ✏️ 장바구니 담기: 2를 입력 후 원하는 상품 이름을 입력하여 담기 
 ##### ✏️ 장바구니 금액 확인: 3을 입력 시 장바구니 총금액 확인
 ##### ✏️ 프로그램 종료: 4를 입력 시 프로그램 종료 확인 5를 입력 시 프로그램 종료 그 외 번호 입력 시 종료하지 않음
---
<p align = center><img src = https://velog.velcdn.com/images/nsy5792/post/ee6c89e6-b046-4576-87d6-744ab02ba1ce/image.png height = 100% width = 100%>


✏️ lib/ product.dart: `Product` 클래스 생성

✏️ lib/ shopping_mall.dart: 상품 리스트, 장바구니, 총 가격 등 구현

✏️ bin/ shoppingmall.dart: 메인으로 사용자 입력에 따라 `shopping_mall.dart` 기능 호출