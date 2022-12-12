void main() {
  String? name = 'aa';
  name = null;
  // name.length;

  // if (name != null) {
  //   name.isNotEmpty;
  // }
  name?.isNotEmpty; 
  //위아래 똑같은 것.
  //name이 null이 아니라면 isNotEmpty 속성을 달라고 요청하는 것.
}
