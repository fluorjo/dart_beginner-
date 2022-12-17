abstract class Human {
  void walk();
}

enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Player extends Human {
  String name;
  XPLevel xp;
  Team team;
  //만약 얘도 name 옆에 쓰면 둘 다 final 됨.

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print('I\'m walking');
  }

  void sayHello() {
    print('Hi my name is $name');
  }
}

class Coach extends Human {
  void walk() {
    print('coach is walking');
  }
}

void main() {
  var aa = Player(
    name: 'aa',
    xp: XPLevel.pro,
    team: Team.red,
  );
}
