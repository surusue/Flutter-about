main() {
  //List에 대입할 데이터 지정 안 하면 dynamic 리스트 됨
  List list1 = [10, 'hello', true];
  list1[0] = 20;
  print('List : [${list1[0]}, ${list1[1]}, ${list1[2]}]');

  List<int> list2 = [10, 20, 30];
  // list2[0] = 'hello'; 오류
  list2.add(40);
  list2.add(50);
  print(list2);

  list2.removeAt(0);
  print(list2);

  var list3 = List<int>.filled(3, 0); // 크기 3으로 고정, 0으로 초기화
  // filled(3, 0, growable : true); 면 확장이 가능
  print(list3);

  list3[0] = 10;
  list3[1] = 20;
  list3[2] = 30;
  print(list3);
  // list3.add(40); 런 타임 오류

  // 특정한 로직으로 구성된 리스트
  var list4 = List<int>.generate(3, (index) => index * 10, growable: true);
  print(list4);

  // Set은 중복 데이터를 허용하지 않음
  Set<int> set1 = {10, 20, 10};
  print(set1);
  set1.add(20);
  set1.add(30);
  set1.add(40);
  print(set1);

  // Map은 키와 값 형태로 저장, 접근 시 키를 이용
  Map<String, String> map1 = {'one': 'hello', 'two': 'world'};

  print(map1['one']);
  map1['one'] = 'world';
  print(map1['one']);
}
