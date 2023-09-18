var data1 = 10;
dynamic data2 = 10;

main() {
  var no = 10; // 대입한 초깃값으로 타입이 결정
  no = 20;
  // no = 'hello'; 오류

  // var로 선언하면서 초기화 안 하면 여러 타입 대입 가능 (dynamic 취급)
  var no2;
  no2 = 10;
  no2 = 'hello';
  no2 = true;

  dynamic data = 10;
  data = 'hello';
  data = true;
}
