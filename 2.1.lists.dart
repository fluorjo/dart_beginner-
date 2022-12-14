void main() {
  List<int> numbers2 = [
    2,
    3,
    4,
    5,
  ];
  var giveMeFive = true;
  var numbers = [
    1, 2, 3, 4,
    if (giveMeFive) 5,
    //giveMeFive가 true면 5를 추가한다.
  ];
  print(numbers);
}
