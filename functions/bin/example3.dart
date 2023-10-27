void main(List<String> args) {
  sayHelloTo();
  sayHelloTo(name: null);
  sayHelloTo(name:'foo');

}


// the keyword ? it mean the arguments of function has been optional
void sayHelloTo({String? name}) {
  print('Hello : $name!');
}
