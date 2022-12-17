class Player{
  String name ;
  int xp;
  String team;
  //만약 얘도 name 옆에 쓰면 둘 다 final 됨. 

  
  Player({
    required this.name,
    required this.xp,
    required this.team,
    });

  void sayHello(){
    print('Hi my name is $name');
    
  }
}

void main() {
  
  var aa= Player(name:'aa', xp:1111, team:'red')
    ..name='bb'
    ..xp=3321
    ..team='blue';
    ..sayHello();
    
}
