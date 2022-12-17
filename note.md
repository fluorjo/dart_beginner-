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

3.0.

- void = 이 함수는 아무 것도 리턴하지 않는다는 뜻.
  부가적인 효과만 있고 콘솔에 뭔가 출력을 할 뿐, 리턴하지는 않는다. 
- void 대신 예를 들어 string을 쓰고 안에 return을 넣어준다면 string을 리턴하는 게 된다. 

3.5.

- typedef
  자료형에 alias를 붙일 수 있게 해준다. 

  자료형이 헷갈릴 때 도움이 될 alias를 만드는 방법.

4.0.

- class에서 property를 선언할 때는 반드시 타입을 정해줘야 한다. var로만 쓰면 안 된다. 

- dart의 class에서는 this를 사용하지 않아도 된다. 그냥 $변수명 해주면 됨. 

  써도 작동하긴 하고, method 내에서 같은 이름의 변수가 있어서 어쩔 수 없이 사용해야 할 때 쓰면 됨. class Player{
    final String name = 'aa';
    //final 선언해주면 바꿀 수 없게 됨. 
    int xp = 1500;

    void sayHello(){
      var name= '122';
      print('Hi my name is ${this.name}');
      
    }
  }

4.1.

- constructor의 이름은 class와 같아야 한다. 

4.3.

- : <- 매우 중요. 클래스를 초기화시키고 유저가 입력시킨 파라미터 값을 받을 수 있게 해줌. 

4.7.

- 추상화 클래스로는 객체를 생성할 수 없다. 

- 추상화 클래스는 다른 클래스들이 직접 구현해야 하는 메소드들을 모아놓은 청사진 같은 것. 

  다른 클래스들이 어떤 청사진을 가지고 있어야 하는지 정의해주는 것. 

- 청사진에 메소드의 이름과 반환 타입만 정해서 정의한다. 

- 추상화 클래스를 상속받는 클래스들이 가지고 있어야 하는 메소드들을 정의한다. 

4.8.

- super = 확장을 한(extends) 부모 클래스와 상호작용할 수 있게 해준다. 
- @override (대체)= 다른 데서 온 메소드를 직접 만든 걸로 대체함. 