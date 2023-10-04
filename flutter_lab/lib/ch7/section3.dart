// 믹스인에는 변수, 함수 선언은 할 수 있지만 생성자는 선언할 수 없다
// 따라서 객체를 생성할 수도 없다
mixin MyMixin {
  int mixinData = 10;
  static int data = 20;

  void mixInFun() {
    print('MyMixin... mixInFun()...');
  }

  static void myFun() {}
}

class MySuper {
  int superData = 20;
  void superFun() {
    print('MySuper... superFun()');
  }
}

// 다트에선 다중 상속을 지원하지 않아 상속 없이도 사용할 수 있게 하기 위해 믹스인 사용
// 믹스인 멤버 사용시 with 예약어 사용
class MyClass extends MySuper with MyMixin {
  void sayHello() {
    print('class data : $superData, mixin Data : $mixinData');
    mixInFun();
    superFun();
  }
}

// 특정 타입의 클래스에서만 사용하도록 믹스인 제한하기 - on
mixin MyMixin2 on MySuper2 {}

class MySuper2 {}

class MyClass2 extends MySuper2 with MyMixin2 {} //성공
// class MySomeClass with MyMixin {} 오류

main() {
  var obj = MyClass();
  obj.sayHello();

  if (obj is MyMixin) {
    print('obj is MyMixin');
  } else {
    print('obj is not MyMixin');
  }
  // with 예약어로 믹스인을 이용하는 객체는 믹스인 타입으로 사용도 가능
  MyMixin obj2 = MyClass();
}
