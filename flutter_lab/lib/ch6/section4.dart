// 팩토리 생성자 = 실제로 객체를 생성하진 않고 상황에 맞는 객체를 준비해서 반환
class MyClass {
  MyClass._instance();
  factory MyClass() {
    return MyClass._instance();
  }
  main() {
    var obj = MyClass();
  }
}

// 캐시 알고리즘에 잘 쓰임
class Image {
  late String url;
  static Map<String, Image> cache = <String, Image>{};
  Image._instance(this.url);
  factory Image(String url) {
    if (cache[url] == null) {
      // 전달받은 식별자가 캐시에 없으면
      var obj = Image._instance(url); // 해당 식별자로 객체를 새로 생성 후
      cache[url] = obj; // 캐시에 추가
    }
    return cache[url]!; // 캐시에서 식별자에 해당하는 객체 반환
  }
}

main() {
  var image1 = Image('a.jpg');
  var image2 = Image('a.jpg');
  print('image1 == image2 : ${image1 == image2}'); // iage1 == image2 : true
}
