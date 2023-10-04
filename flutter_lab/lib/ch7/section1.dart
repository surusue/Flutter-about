class SuperClass {
  SuperClass() {}
  SuperClass.first(int arg) {}
  int myData = 10;
  void myFun() {
    print('Super.. myFun()...');
  }
}

class SubClass extends SuperClass {
  // 자식 클래스 생성자 호출 시 꼭 부모 클래스 생성자도 호출되게 해야 함
  // 매개변수가 없으면 super 안 써도 자동 호출 됨
  SubClass() : super() {}
  // 매개변수가 있다면 super를 꼭 꼭 꼭 써야 함
  SubClass.first() : super.first(10) {}
  int myData = 20;
  // 오버라이딩(재정의)를 하려면 super예약어 접근 필수
  void myFun() {
    super.myFun();
    print('Sub... myFun()..myData : $myData, super.myData : ${super.myData}');
  }
}

class SuperClass2 {
  String name;
  int age;
  SuperClass2(this.name, this.age) {}
}

class SubClass2 extends SuperClass2 {
  // 부모 클래스 멤버 초기화 방법
  SubClass2(String name, int age) : super(name, age) {}
  // == SubClass(super.name, super.age); 간소화 가능
}

main(List<String> args) {
  var obj = SubClass();
  obj.myFun();
  var obj2 = SubClass2('kkang', 10);
  print('${obj2.name}, ${obj2.age}');
}
