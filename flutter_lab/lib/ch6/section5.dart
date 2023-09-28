// 상수 생성자는 const로 선언하며 {} 를 가질 수 없음
// 상수 생성자가 선언된 클래스의 모든 멤버 변수는 final 이어야 함

class MyClass {
  final int data1;
  const MyClass(this.data1);
}

class MyClass2 {
  late int data1;
  MyClass2(this.data1);
}

main() {
  var obj1 = MyClass(10);
  var obj2 = MyClass(20);
  print('obj1.data : ${obj1.data1}, obj2.data : ${obj2.data1}');
  // 생성자에 const가 있어야만 const로 객체 생성 가능
  var obj3 = const MyClass(30);

  // 일반 객체는 서로 다른 객체다
  var obj4 = MyClass2(10);
  var obj5 = MyClass2(10);
  print('obj4 == obj5 : ${obj4 == obj5}');

  // 그러나 const를 붙여 생성하면 새로 생성하지 않고 대입해서 같다
  var obj6 = const MyClass(30);
  print('obj3 == obj6 : ${obj3 == obj6}');

  // 값이 다르면 새로 생김 !
  var obj7 = const MyClass(40);
  print('obj3 == obj7 : ${obj3 == obj7}');
}
