1.1.

- 변수 수정할 때는 같은 타입으로만 수정할 수 있다. 

- 변수 만드는 두 가지 방법
  var를 이용/직접 변수의 타입 지정
- var는 함수나 메소드 내부에 지역 변수를 선언할 때 사용
- 타입 지정은 class에서 변수나 property 선언할 때 사용.

1.2.

-  dynamic type
  여러 타입을 가질 수 있는 변수.
- 사용하는 이유?
  변수 타입이 뭔지 알기 어려운 경우가 생김. 
  특히 플러터너 json 쓰다 보면.
  웹에서 데이터 받았는데 정체를 모르는 경우가 생김.

1.3.

- null safety
  개발자가 null 값을 참조할 수 없도록 하는 것. 
  null값을 참조할 경우 컴파일 전에 에러를 찾아낸다. 

null safety를 쓰지 않을 경우

*bool isEmpty(String string)=> string.length==0;*

*main(){*
  *isEmpty(null);*
*}*

이러면 null의 length를 찾는 게 돼서 에러가 남. 
컴파일러가 잡지 못하고 유저의 기기에서 발생하는 에러.
null값을 허용하려면 ?를 붙여주면 됨. String? 같이.



모든 변수는 기본적으로 non-nullable.