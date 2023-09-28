// 명명된 생성자 = 여러 생성자를 정의하는 기법
class MyClass {
  MyClass(int arg, int i) {
    print('MyClass() call....');
  }
  // 다트에서는 클래스와 다른 이름으로 여러 개 정의할 수 있음
  MyClass.first() {}
  MyClass.second(int data) {}

  // this() 로 다른 생성자 호출하기
  // 단, this는 생성자의 {} 안에는 사용할 수 없음 {}도 사용 불가
  MyClass.third(int arg) : this(arg, 0); // 이러면 MyClass 생성자도 같이 호출 (인자 수가 같음)
}

// 명명된 생성자 중첩 호출
class TestClass {
  late int data1;
  late int data2;
  TestClass(this.data1, this.data2);
  TestClass.first(int arg) : this(arg, 0); // 기본 생성자(TestClass) 호출
  TestClass.second() : this.first(0); // 명명된 생성자(TestClass.first) 호출
}
