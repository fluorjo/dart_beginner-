class Player{
  final String name ;
  //final 선언해주면 바꿀 수 없게 됨. 
  int xp;
  String team;
  int age;
  
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age
    });
    
  void sayHello(){
    print('Hi my name is $name');
    
  }
}

void main() {
  var player=Player(
    name:'aa',
    xp:100,
    team:'dd',
    age:88);
  player.sayHello();

}