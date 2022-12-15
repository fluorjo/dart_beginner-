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

1.4.

- final = js의 const 같은 것.

1.5.

- late = 초기 데이터 없이 변수를 선언할 수 있게 한다. 

1.6.

- const = compile-time constant를 만들어준다.★★★

  =컴파일할 때 평가된다★★★
  컴파일할 때,앱을 배포하기 전에 미리 알고 있는 값이어야 한다는 뜻.

  반대로 어떤 값인지 모르고 그 값이 API로부터 오거나 사용자의 입력으로 받는 거면 final이나 var를 써야 한다. 
  const API=fetchApi();    = NG

  final API=fetchApi();    = OK
  

2.0.

- 자료형
  dart의 자료형들, 그리고 대부분이 object로 이뤄져있다. function도.

2.1.

- List
  - [1,2,] 처럼 요소 마지막에 , 넣어주면 보기 좋게 줄바꿈해줌.
  - collection if, collection for를 지원한다. 

2.2. String Interpolation

- text에 변수를 추가하는 방법
- $나 ${}
- ' '를 두 번 쓰게 될 경우 \\' 쓰면 됨.

2.3.Map

- js의 object나 python의 dict같은 것. 
- Map<String, Object>
  라고 돼있다면 key는 string, value는 object(여러 자료형이 섞임)란 뜻.
- dart는 모든 게 object에서 시작. object는 어떤 자료형도 될 수 있음. 타입 스크립트의 any 같은 것. 

2.4.Set

- Set과 List의 차이점?
  - Set에 속한 모든 아이템은 유니크. 
    Set에 이미 있는 거 추가해도 출력하면 하나만 나옴. 
  - Set은 순서가 있음.