void main() {
  late final String name;
  //작업을 한다. api 요청으로 데이터를 받고 그 데이터를 변수에 넣어준다.

  //이 상태에서 print를 한다던가 하는 실수를 막아준다.

  name = 'aa';
  //데이터 넣어주는 작업은 한번만 할 수 있다. 이 다음에 또 name='bb'; 못한다. 저것도 final이기 때문.
}
