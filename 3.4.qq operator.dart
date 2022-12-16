//qq operator

String capitalizeName(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return 'ANON';
}

String capitalizeName2(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';

String capitalizeName3(String? name) => name?.toUpperCase() ?? 'ANON';

// left ?? right = left가 null이면 right를 리턴한다. 아니면 그냥 left 리턴하고.
//그리고 name.toUpperCase가 아니라 'name 자체'가 null일 수 있으니 한번 더 ? 해준 것.

//qq equals / qq assignment operator
void main() {
  String? name;
  name ??= 'nn';
  //name이 눌이면 'nn'을 할당해 달라.
  name ??= 'ㄹㄹㄹ';
  print(name);
}
