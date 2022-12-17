enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Player {
  String name;
  XPLevel xp;
  Team team;
  //만약 얘도 name 옆에 쓰면 둘 다 final 됨.

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print('Hi my name is $name');
  }
}

void main() {
  var aa = Player(
    name: 'aa',
    xp: XPLevel.pro,
    team: Team.red,
  );
}
