class Player {
  final String name = 'aa';
  //final 선언해주면 바꿀 수 없게 됨.
  int xp = 1500;

  void sayHello() {
    print('Hi my name is $name');
  }
}

void main() {
  var player = Player();
  player.sayHello();
}
