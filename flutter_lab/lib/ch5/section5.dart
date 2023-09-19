// 데이터를 가져온다 - get 변경한다 - set
// get은 매개변수 부분 선언 x set은 매개변수 필요
// 게터와 세터는 변수처럼 이용 가능

String _name = 'Hello';

String get name {
  return _name.toUpperCase();
}

set name(value) {
  _name = value;
}

main(List<String> args) {
  name = "World";
  print('name: $name');
}
