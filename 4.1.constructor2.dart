class Player {
  final String name;
  //final 선언해주면 바꿀 수 없게 됨.
  int xp;

  Player(this.name, this.xp);

  void sayHello() {
    print('Hi my name is $name');
  }
}

void main() {
  var player = Player('aa', 100);
  player.sayHello();
  var player2 = Player('bb', 200);
  player2.sayHello();
}
