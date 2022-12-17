class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

class Strong {
  final double strengthLevel = 3444.33;
}

class QuickRunner {
  void runQuick() {
    print("rrrrrrr");
  }
}

class Tall {
  final double height = 22222;
}

enum Team { blue, red }

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({required this.team, required String name}) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
}

class Horse with Strong, QuickRunner, Tall {}

class Kid with QuickRunner {}

void main() {
  var player = Player(team: Team.red, name: 'aa');
}
