// 다트에서 생성자가 없는 클래스는 존재할 수 없다
class User1 {} // 없이 선언해도 안에 User() {} 가 있는 것과 같음

class User2 {
  late String name;
  late int age;

  // 생성자는 보통 멤버를 초기화하는 용도
  User2(String name, int age) {
    this.name = name;
    this.age = age;
  }
  sayHello() {
    print('name : $name, age : $age');
  }
}

class User3 {
  late String name;
  late int age;
  // 멤버 초기화 생성자 단순화
  User3(this.name, this.age);

  sayHello() {
    print('name : $name, age : $age');
  }
}

class User4 {
  late String name;
  late int age;
  // 생성자의 초기화 목록을 사용할 수도 (: 뒤가 목록임)
  User4(String name, int age)
      : this.name = name,
        this.age = age {}
}

class MyClass1 {
  late int data1;
  late int data2;
  // 리스트의 데이터로 초기화
  MyClass1(List<int> args)
      : this.data1 = args[0],
        this.data2 = args[1] {}
}

class MyClass2 {
  late int data1;
  late int data2;
  // 클래스 멤버 함수의 반환값으로 초기화
  // 생성자의 초기화 목록 실행 시점은 객체 생성 이전이므로
  // clFun은 꼭 static이 추가된 클래스 멤버여야 함
  MyClass2(int arg1, int arg2)
      : this.data1 = calFun(arg1),
        this.data2 = calFun(arg2) {}

  static int calFun(int arg) {
    return arg * 10;
  }

  printData() {
    print('$data1, $data2');
  }
}
