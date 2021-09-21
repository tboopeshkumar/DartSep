

class Parent {
  void doSomething() {
    print("do something from parent");
  }
} 

mixin TestMixin {
  void doSomething(){
    print("do someting from Mixin");
  }
}

mixin TestMixin2 {
  void doSomething(){
    print("do someting from Mixin 2");
  }
}

class TestInterface {
  void doSomething(){

  }
}

class Demo extends Parent
          with TestMixin, TestMixin2
          implements TestInterface
          
          
{
  void doSomething() {
    print("do something from interface");
  }
}

void main() {

  var obj1 = Demo();
  obj1.doSomething();

}

          