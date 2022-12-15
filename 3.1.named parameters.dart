String sayHello({String name, int age, String country}) {
  return "Hello $name, you are $age, and you come from $country";
}

//void main() {
//  print(sayHello('ff',22,'korea'));
//}
//순서 기억해야 하고, 각 내용이 뭘 의미하는지 그냥 봐서는 모르게 되는 문제가 있음.

void main() {
  print(sayHello(
    age: 14,
    country: 'korea',
    name: 'ffff',
  ));
}

String sayHello2({
  String name = 'a',
  int age = 33,
  String country = 'fda',
}) {
  return "Hello $name, you are $age, and you come from $country";
}
//null safety에러 하결하는 방법 1:디폴트 값 설정하기.

String sayHello3(
    {required String name, required int age, required String country}) {
  return "Hello $name, you are $age, and you come from $country";
}
//null safety에러 하결하는 방법 2:required modifier 이용하기.
//이러면 필수값들이 입력되지 않은 경우에는 컴파일을 안 한다(?)
