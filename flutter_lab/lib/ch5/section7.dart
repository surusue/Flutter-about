some2() {
  throw FormatException('my exception');
}

main(List<String> args) {
  var list = [10, 20, 30];
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }
  for (var x in list) {
    print(x);
  }

  /*
  break : switch 문 나가기
  continue : 특정 위치(라벨)로 이동하기
  return : switch 문이 작성된 함수 종료하기(반환)
  throw : switch 문이 작성된 함수 종료하기(던지기) - 예외, 문자열, 객체 다 가능
  */
  some(arg) {
    switch (arg) {
      case 'A':
        print('A');
        break; // 케이스마다 실행 흐름을 꼭 지정!
      case 'B':
        print('B'); // 마지막은 괜찮다
    }
  }

  try {
    print('step1...');
    some2();
    print('step2...');
  } on FormatException catch (e) {
    print('step3...$e');
  } on Exception catch (e) {
    print('step4...$e');
  } finally {
    print('step5...');
  }
  print('step6...');

  // 예외 구분 안 할거면 간단히 작성도 가능
  try {
    some2();
  } catch (e) {
    print('catch...$e');
  }
}
