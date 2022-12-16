String sayHello(
  String name, 
  int age, 
  [String? country='kk'])=> "Hello $name, you are $age, and you come from $country";


void main() {
  var results = sayHello('ffff',12);
  print(results);
}
